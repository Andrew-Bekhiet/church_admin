import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDatabaseService extends Mock implements DatabaseService {}

void main() {
  group('UsersDAO', () {
    late UsersDAO dao;

    setUp(() {
      final db = _MockDatabaseService();
      when(() => db.varsTransformer).thenReturn(const DBVarsTransformer());
      dao = UsersDAO(db: db);
    });

    test(
      'the next page of users continues after the cursor by name then uid',
      () {
        final cursor = User(
          uid: '00000000-0000-0000-0000-000000000001',
          name: 'مينا',
          permissions: const PermissionsSet.empty(),
          currentUserCanManageThisUser: true,
        );

        final vars = dao.baseStreamAllConfig.transformRequest!(
          PaginatableStreamRequest(cursor: cursor, pageIndex: 1, pageSize: 100),
        );

        expect(vars['orderBy'], [
          {'name': 'ASC_NULLS_LAST'},
          {'uid': 'ASC_NULLS_LAST'},
        ]);
        expect(vars['where'], [
          {
            '_or': [
              {
                '_and': [
                  {
                    'name': {'_gt': 'مينا'},
                  },
                ],
              },
              {
                '_and': [
                  {
                    'name': {'_eq': 'مينا'},
                  },
                  {
                    'uid': {'_gt': '00000000-0000-0000-0000-000000000001'},
                  },
                ],
              },
            ],
          },
        ]);
      },
    );
  });
}
