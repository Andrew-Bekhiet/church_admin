import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/advanced_query_known_backend_gaps.dart';
import 'support/advanced_query_matrix.dart';
import 'support/advanced_search_robot.dart';
import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_users.dart';

void main() {
  patrolTest(
    'every field and operator the advanced search offers runs on the backend',
    ($) async {
      final tester = $.tester;
      const concurrentQueries = 8;

      void step(String description) => debugPrint('E2E STEP: $description');

      final servicesCount = await E2eBackend.servicesCount();

      step('admin signs in');
      await E2eUsers.recordUpToDateSpiritDataOf(E2eBackend.adminEmail);
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: E2eBackend.adminEmail);

      step('a person search by name finds nobody with an unknown name');
      final search = AdvancedSearchRobot(tester);
      await search.open();
      await search.enterValue('no-such-person-e2e');
      expect(await search.searchAndReadResultsCount(), 0);
      await search.backToQuery();

      step('a person search for an empty name runs');
      await search.useOperator(StringOperator.isEmpty);
      expect(await search.searchAndReadResultsCount(), isNonNegative);
      await search.backToQuery();

      step('a service search for any name finds every service');
      await search.searchIn(AdvancedQueriesMetadata().service);
      await search.filterBy(ServiceFields().name);
      await search.useOperator(StringOperator.isNotEmpty);
      expect(await search.searchAndReadResultsCount(), servicesCount);
      await search.backToQuery();

      step('every type, field and operator the screen offers runs');
      final matrix = AdvancedQueryMatrix();
      final cases = [...matrix.filterCases, ...matrix.orderByCases];
      final failures = [...matrix.unbuildableCases];
      final knownGapsNowPassing = <String>[];
      final started = DateTime.now();
      for (final batch in cases.slices(concurrentQueries)) {
        final outcomes = await Future.wait(
          batch.map(
            (queryCase) async =>
                (queryCase, await queryCase.failureAgainstBackend()),
          ),
        );
        for (final (queryCase, failure) in outcomes) {
          final knownGap =
              AdvancedQueryKnownBackendGaps.missingPieceBehindFilter(
                queryCase,
              );
          switch ((knownGap, failure)) {
            case (null, final failure?):
              failures.add(failure);
            case (final knownGap?, null):
              knownGapsNowPassing.add('${queryCase.description} ($knownGap)');
            case _:
          }
        }
      }
      debugPrint(
        'E2E advanced query matrix: ${cases.length} queries, '
        '${failures.length} failures, '
        '${knownGapsNowPassing.length} known gaps now passing '
        'in ${DateTime.now().difference(started)}',
      );
      for (final failure in failures) {
        debugPrint('E2E broken query: $failure');
      }
      expect(failures, isEmpty, reason: failures.join('\n'));
      expect(
        knownGapsNowPassing,
        isEmpty,
        reason:
            'remove these from AdvancedQueryKnownBackendGaps:\n'
            '${knownGapsNowPassing.join('\n')}',
      );

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 15)),
  );
}
