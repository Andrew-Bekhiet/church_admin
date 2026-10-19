import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

void main() {
  const familyId = 'family-1';

  Json overrideAnswer(Json variables) {
    final input = (variables['input'] as Map).cast<String, dynamic>();

    return {
      'id': input['familyId'],
      'familyId': input['familyId'],
      'isComplete': input['isComplete'],
      '__typename': 'DataCheckOverride',
    };
  }

  FakeAshBackend backendWith(Map<String, FakeAshMutation> mutations) {
    final backend = FakeAshBackend(const [], mutations: mutations);
    addTearDown(backend.dispose);

    return backend;
  }

  group('overriding', () {
    for (final isComplete in [true, false]) {
      test('marking a family ${isComplete ? '' : 'in'}complete is applied', () {
        final backend = backendWith({'overrideDataCheck': overrideAnswer});

        return backend.db.dataChecks
            .tryOverride(familyId: familyId, isComplete: isComplete)
            .then((applied) {
              expect(applied, isTrue);
              expect(
                backend.server.sentTo('overrideDataCheck').single.variables,
                {
                  'input': {'familyId': familyId, 'isComplete': isComplete},
                },
              );
            });
      });
    }

    test('a family the server does not show is not applied', () {
      final backend = backendWith({'overrideDataCheck': (_) => null});

      return expectLater(
        backend.db.dataChecks.tryOverride(familyId: familyId, isComplete: true),
        completion(isFalse),
      );
    });

    test('a forbidden override throws the forbidden exception', () {
      final backend = backendWith({
        'overrideDataCheck': (_) => throw const FakeAshRejection('forbidden'),
      });

      return expectLater(
        backend.db.dataChecks.tryOverride(familyId: familyId, isComplete: true),
        throwsA(isA<BackendForbiddenException>()),
      );
    });
  });

  group('clearing', () {
    test('an existing override is cleared', () {
      final backend = backendWith({
        'clearDataCheckOverride': (variables) => {
          'id': variables['id'],
          'familyId': variables['id'],
          '__typename': 'DataCheckOverride',
        },
      });

      return backend.db.dataChecks.tryClearOverride(familyId: familyId).then((
        cleared,
      ) {
        expect(cleared, isTrue);
        expect(
          backend.server.sentTo('clearDataCheckOverride').single.variables,
          {'id': familyId},
        );
      });
    });

    test('a family that had no override is not cleared', () {
      final backend = backendWith({
        'clearDataCheckOverride': (_) =>
            throw const FakeAshRejection('not_found'),
      });

      return expectLater(
        backend.db.dataChecks.tryClearOverride(familyId: familyId),
        completion(isFalse),
      );
    });

    test('a forbidden clear throws the forbidden exception', () {
      final backend = backendWith({
        'clearDataCheckOverride': (_) =>
            throw const FakeAshRejection('forbidden'),
      });

      return expectLater(
        backend.db.dataChecks.tryClearOverride(familyId: familyId),
        throwsA(isA<BackendForbiddenException>()),
      );
    });
  });
}
