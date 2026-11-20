import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/erroring_graphql_link.dart';
import '../../../../fakes/recording_graphql_link.dart';

void main() {
  group('FingerprintIdsDAO', () {
    const personId = '00000000-0000-0000-0000-0000000000e1';
    const fingerprintId = '00000000-0000-0000-0000-0000000000f1';

    late BehaviorSubject<bool> connectivity;

    FingerprintIdsDAO daoOver(Link link) => FingerprintIdsDAO(
      db: DatabaseService(
        DBGraphQLClient(
          connectivityStream: connectivity,
          link: link,
          cache: GraphQLCache(),
          autoChangeFetchPolicy: false,
        ),
      ),
    );

    setUp(() {
      connectivity = BehaviorSubject.seeded(true);
      addTearDown(connectivity.close);
    });

    test('a code that breaks the unique employee code constraint is reported '
        'as already linked', () async {
      final dao = daoOver(
        ErroringGraphQLLink(
          'Uniqueness violation. duplicate key value violates unique '
          'constraint "persons_fingerprint_ids_employee_code_key"',
        ),
      );

      await expectLater(
        dao.addEmployeeCode(personId: personId, employeeCode: '1042'),
        throwsA(
          isA<FingerprintEmployeeCodeAlreadyLinkedException>().having(
            (exception) => exception.employeeCode,
            'employeeCode',
            '1042',
          ),
        ),
      );
    });

    test('any other rejected add keeps the server error', () async {
      final dao = daoOver(
        ErroringGraphQLLink(
          'check constraint of an insert/update permission has failed',
        ),
      );

      await expectLater(
        dao.addEmployeeCode(personId: personId, employeeCode: '1042'),
        throwsA(isA<OperationException>()),
      );
    });

    test('a removal that removed nothing is reported as not removed', () async {
      final dao = daoOver(
        RecordingGraphQLLink(const {'deletePersonsFingerprintIdsByPk': null}),
      );

      await expectLater(
        dao.remove(fingerprintId),
        throwsA(isA<FingerprintIdNotRemovedException>()),
      );
    });

    test('a removal the server confirms completes', () async {
      final dao = daoOver(
        RecordingGraphQLLink(const {
          'deletePersonsFingerprintIdsByPk': {
            '__typename': 'PersonsFingerprintIds',
            'id': fingerprintId,
          },
        }),
      );

      await expectLater(dao.remove(fingerprintId), completes);
    });
  });
}
