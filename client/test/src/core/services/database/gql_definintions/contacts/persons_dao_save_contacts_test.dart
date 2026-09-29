import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MergedInsertLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) =>
      Stream.value(
        const Response(
          data: {
            'insertContacts': {'affectedRows': 0},
          },
          response: {},
        ),
      );
}

void main() {
  test(
    'a number the server merged into an existing one saves without error',
    () async {
      final db = _MockDatabaseService();
      when(() => db.varsTransformer).thenReturn(const DBVarsTransformer());
      when(() => db.graphQLClient).thenReturn(
        DBGraphQLClient(
          connectivityStream: BehaviorSubject.seeded(true),
          link: _MergedInsertLink(),
          cache: GraphQLCache(),
        ),
      );
      final dao = PersonsDAO(db: db);
      const personId = '00000000-0000-4000-8000-000000000001';

      final save = dao.saveContacts(
        personId: personId,
        oldContacts: const [],
        newContacts: const [
          PhoneContact(
            id: '00000000-0000-4000-8000-00000000000a',
            phone: '+201001234567',
            isMainPhone: true,
          ),
        ],
      );

      await expectLater(save, completes);
    },
  );
}
