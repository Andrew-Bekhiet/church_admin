import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockUsersDAO extends Mock implements UsersDAO {}

class _MockStreamAllConfig extends Mock implements StreamAllConfig<User> {}

void main() {
  group('ManageUsersCubit with automated accounts', () {
    const service = Service(id: 's1', name: 'خدمة ابتدائي');
    const fingerprintBot = User(
      uid: 'bot',
      name: 'بصمة الحضور',
      userType: UserType.fingerprintBot,
    );
    const serviceAdmin = User(
      uid: 'mina',
      name: 'مينا',
      adminOn: [AdminOnData(permissionId: 'mina_s1', service: service)],
    );

    late _MockUsersDAO dao;

    void stubUsers(List<User> users) {
      when(() => dao.baseStreamAllConfig).thenReturn(_MockStreamAllConfig());
      when(
        () => dao.streamAllWithConfig(
          streamAllConfig: any(named: 'streamAllConfig'),
          searchQuery: any(named: 'searchQuery'),
          where: any(named: 'where'),
          overrideTotalLimit: any(named: 'overrideTotalLimit'),
        ),
      ).thenAnswer(
        (_) => PaginatableStream<User, String?>(
          parametersStream: Stream.value(null),
          pageSize: users.length,
          factory: (_) => Stream.value(
            PaginatableStreamResponse(data: users),
          ),
        ),
      );
    }

    setUpAll(() => registerFallbackValue(_MockStreamAllConfig()));
    setUp(() => dao = _MockUsersDAO());

    blocTest<ManageUsersCubit, ManageUsersState>(
      'asks for the users the viewer can manage and every automated account',
      setUp: () => stubUsers([]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (_) async {
        final where =
            verify(
                  () => dao.streamAllWithConfig(
                    streamAllConfig: any(named: 'streamAllConfig'),
                    searchQuery: any(named: 'searchQuery'),
                    where: captureAny(named: 'where'),
                    overrideTotalLimit: any(named: 'overrideTotalLimit'),
                  ),
                ).captured.single
                as Stream<List<Filter>>;

        expect((await where.first).map((filter) => filter.queryToJson()), [
          {
            '_or': [
              {
                'currentUserCanManageThisUser': {'_eq': true},
              },
              {
                'userType': {'_neq': 'human'},
              },
            ],
          },
        ]);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'an automated account stays in the flat list',
      setUp: () => stubUsers([fingerprintBot, serviceAdmin]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) => cubit.showFlat(),
      wait: Duration.zero,
      verify: (cubit) =>
          expect(cubit.state.users, [fingerprintBot, serviceAdmin]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'an automated account is grouped with the users who have no scope',
      setUp: () => stubUsers([fingerprintBot, serviceAdmin]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.groups.map(
          (group) => [
            group.kind,
            [for (final subgroup in group.subgroups) ...subgroup.users],
          ],
        ),
        [
          [
            UserAdminGroupKind.service,
            [serviceAdmin],
          ],
          [
            UserAdminGroupKind.unscoped,
            [fingerprintBot],
          ],
        ],
      ),
    );
  });
}
