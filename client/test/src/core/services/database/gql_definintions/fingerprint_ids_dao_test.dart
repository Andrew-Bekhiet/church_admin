import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_ids/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_ids/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/erroring_graphql_link.dart';
import '../../../../fakes/recording_graphql_link.dart';
import '../../../../fakes/recording_subscription_link.dart';

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

    test('the fingerprint numbers of a person arrive as the server holds '
        'them', () async {
      const addedByUid = '00000000-0000-0000-0000-0000000000a1';
      final addedAt = DateTime.utc(2026, 11, 6, 9);
      final dao = daoOver(
        RecordingSubscriptionLink({
          'watchPersonFingerprintIds': Subscription_watchPersonFingerprintIds(
            personsFingerprintIds: [
              Fragment_PersonFingerprintId(
                id: fingerprintId.toUuid(),
                employeeCode: '1042',
                addedAt: addedAt,
                addedByUser: Fragment_User(
                  uid: addedByUid.toUuid(),
                  name: 'بوت البصمة',
                  userType: 'fingerprint_bot',
                ),
              ),
            ],
          ).toJson(),
        }),
      );

      expect(await dao.streamOfPerson(personId).first, [
        isA<PersonFingerprintId>()
            .having((row) => row.id, 'id', fingerprintId)
            .having((row) => row.employeeCode, 'employeeCode', '1042')
            .having(
              (row) => row.addedAt.isAtSameMomentAs(addedAt),
              'addedAt is the moment the server holds',
              isTrue,
            )
            .having((row) => row.addedBy.uid, 'addedBy.uid', addedByUid)
            .having((row) => row.addedBy.name, 'addedBy.name', 'بوت البصمة')
            .having(
              (row) => row.addedBy.userType,
              'addedBy.userType',
              UserType.fingerprintBot,
            ),
      ]);
    });

    test('an add sends the person and the employee code', () async {
      final link = RecordingGraphQLLink(const {
        'insertPersonsFingerprintIdsOne': {
          '__typename': 'PersonsFingerprintIds',
          'id': fingerprintId,
        },
      });

      await daoOver(
        link,
      ).addEmployeeCode(personId: personId, employeeCode: '1042');

      expect(link.requests.single.variables, {
        'personId': personId,
        'employeeCode': '1042',
      });
    });

    test('an add the server accepts completes', () async {
      final dao = daoOver(
        RecordingGraphQLLink(const {
          'insertPersonsFingerprintIdsOne': {
            '__typename': 'PersonsFingerprintIds',
            'id': fingerprintId,
          },
        }),
      );

      await expectLater(
        dao.addEmployeeCode(personId: personId, employeeCode: '1042'),
        completes,
      );
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

    test('a removal sends the id of the fingerprint number', () async {
      final link = RecordingGraphQLLink(const {
        'deletePersonsFingerprintIdsByPk': {
          '__typename': 'PersonsFingerprintIds',
          'id': fingerprintId,
        },
      });

      await daoOver(link).remove(fingerprintId);

      expect(link.requests.single.variables, {'id': fingerprintId});
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
