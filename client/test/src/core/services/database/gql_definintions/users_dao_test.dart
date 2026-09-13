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
        const cursor = User(
          uid: '00000000-0000-0000-0000-000000000001',
          name: 'مينا',
        );

        final vars = dao.baseStreamAllConfig.transformRequest!(
          const PaginatableStreamRequest(
            cursor: cursor,
            pageIndex: 1,
            pageSize: 100,
          ),
        );

        expect(
          vars['orderBy'],
          [
            Input_AuthUsersDataOrderBy(name: Enum_OrderBy.ASC_NULLS_LAST),
            Input_AuthUsersDataOrderBy(uid: Enum_OrderBy.ASC_NULLS_LAST),
          ].map((o) => o.toJson()),
        );
        expect(
          vars['where'],
          [
            Input_AuthUsersDataBoolExp(
              $_or: [
                Input_AuthUsersDataBoolExp(
                  $_and: [
                    Input_AuthUsersDataBoolExp(
                      name: Input_StringComparisonExp($_gt: cursor.name),
                    ),
                  ],
                ),
                Input_AuthUsersDataBoolExp(
                  $_and: [
                    Input_AuthUsersDataBoolExp(
                      name: Input_StringComparisonExp($_eq: cursor.name),
                    ),
                    Input_AuthUsersDataBoolExp(
                      uid: Input_UuidComparisonExp(
                        $_gt: UuidValue.fromString(cursor.uid),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ].map((w) => w.toJson()),
        );
      },
    );
  });
}
