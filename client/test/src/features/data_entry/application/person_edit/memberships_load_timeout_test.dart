import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _SlowLink extends Link {
  final Duration delay;
  final Map<String, dynamic> data;

  _SlowLink(this.delay, this.data);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) =>
      Stream.fromFuture(
        Future.delayed(delay, () => Response(data: data, response: const {})),
      );
}

void main() {
  const personId = '00000000-0000-0000-0000-000000000001';
  final mina = Person(id: personId, name: 'مينا');
  final saved = {'personsByPk': mina.toJson()};

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  MembershipsLoadState loadWithServerDelay(Duration delay) {
    late MembershipsLoadState state;

    runZonedGuarded(
      () => fakeAsync((time) {
        final connectivity = BehaviorSubject.seeded(true);
        final logging = FakeLoggingService();
        final controller = PersonMembershipsFormController(
          startingPerson: mina,
          isCreate: false,
          persons: PersonsDAO(
            db: DatabaseService(
              DBGraphQLClient(
                connectivityStream: connectivity,
                link: _SlowLink(delay, saved),
                cache: GraphQLCache(),
                autoChangeFetchPolicy: false,
              ),
            ),
          ),
          currentUser: null,
          analyticsService: AnalyticsService([
            RecordingAnalyticsProvider(),
          ], logging),
          loggingService: logging,
        );

        unawaited(controller.loadSavedMemberships());
        time.elapse(delay + const Duration(seconds: 1));
        state = controller.loadState.value;
        unawaited(connectivity.close());
      }),
      (_, _) {},
    );

    return state;
  }

  test('a server answering after 29s still loads the memberships', () {
    expect(
      loadWithServerDelay(const Duration(seconds: 29)),
      isA<MembershipsLoaded>(),
    );
  });

  test('a server answering after 31s fails the load with a timeout', () {
    expect(
      loadWithServerDelay(const Duration(seconds: 31)),
      isA<MembershipsLoadFailed>().having(
        (failed) => failed.error.toString(),
        'error',
        contains('TimeoutException after 0:00:30.000000'),
      ),
    );
  });
}
