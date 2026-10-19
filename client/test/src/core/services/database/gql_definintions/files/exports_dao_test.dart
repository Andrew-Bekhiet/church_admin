import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/ash_responses.dart';
import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

void main() {
  const downloadUrl = 'https://api.example.com/api/files/token/export.xlsx';
  final expiresAt = DateTime.utc(2030, 5, 1, 12);

  FakeAshBackend serving(FakeAshAction exportData) {
    final backend = FakeAshBackend([], actions: {'exportData': exportData});
    addTearDown(backend.dispose);

    return backend;
  }

  group('ExportsDAO', () {
    test(
      'the export asks for the chosen areas, services, classes and groups',
      () async {
        Json? asked;
        final backend = serving((variables) {
          asked = variables;

          return AshResponses.exportDownloadLink(downloadUrl, expiresAt);
        });

        final answered = await backend.db.exports.exportData(
          areasIds: const ['area-1'],
          servicesIds: const ['service-1', 'service-2'],
          groupsIds: const ['group-1'],
        );

        expect(answered, downloadUrl);
        expect(asked, {
          'areasIds': ['area-1'],
          'servicesIds': ['service-1', 'service-2'],
          'classesIds': <String>[],
          'groupsIds': ['group-1'],
        });
      },
    );

    test('an export of data the user may not export is rejected with the server code', () async {
      final backend = serving(
        (_) => throw const FakeAshRejection('export/forbidden'),
      );

      await expectLater(
        backend.db.exports.exportData(areasIds: const ['area-1']),
        throwsA(
          isA<BackendRejectedException>().having(
            (e) => e.code,
            'code',
            'export/forbidden',
          ),
        ),
      );
    });

    test('an export naming nothing is rejected as invalid input', () async {
      final backend = serving((_) => throw const FakeAshRejection('invalid'));

      await expectLater(
        backend.db.exports.exportData(),
        throwsA(isA<BackendInvalidInputException>()),
      );
    });
  });
}
