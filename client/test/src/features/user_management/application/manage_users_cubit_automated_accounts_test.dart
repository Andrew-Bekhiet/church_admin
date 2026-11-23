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
      uid: 'fingerprint-bot',
      name: 'بصمة الحضور',
      userType: UserType.fingerprintBot,
    );
    const serviceAdmin = User(
      uid: 'service-admin',
      name: 'خادم الخدمة',
      adminOn: [
        AdminOnData(permissionId: 'service-admin_s1', service: service),
      ],
    );
    const servantWithoutScope = User(
      uid: 'servant-without-scope',
      name: 'خادم بدون مسؤولية',
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

    List<List<Object>> kindsAndUsersOf(List<UserAdminGroup> groups) => [
      for (final group in groups)
        [
          group.kind,
          [for (final subgroup in group.subgroups) ...subgroup.users],
        ],
    ];

    blocTest<ManageUsersCubit, ManageUsersState>(
      'asks the server for the users the viewer can manage and for every '
      'automated account',
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

        expect(
          (await where.first).map((filter) => filter.queryToJson()),
          [
            Input_AuthUsersDataBoolExp(
              $_or: [
                Input_AuthUsersDataBoolExp(
                  currentUserCanManageThisUser: Input_BooleanComparisonExp(
                    $_eq: true,
                  ),
                ),
                Input_AuthUsersDataBoolExp(
                  userType: Input_StringComparisonExp(
                    $_nin: [UserType.human.storedName],
                  ),
                ),
              ],
            ),
          ].map((where) => where.toJson()),
        );
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
      'automated accounts form their own group after every other group',
      setUp: () =>
          stubUsers([fingerprintBot, servantWithoutScope, serviceAdmin]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(kindsAndUsersOf(cubit.state.groups), [
        [
          UserAdminGroupKind.service,
          [serviceAdmin],
        ],
        [
          UserAdminGroupKind.unscoped,
          [servantWithoutScope],
        ],
        [
          UserAdminGroupKind.automatedAccounts,
          [fingerprintBot],
        ],
      ]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'an automated account that reads all data and serves a service is '
      'listed only among the automated accounts',
      setUp: () => stubUsers([
        const User(
          uid: 'maintenance-bot',
          name: 'صيانة التطبيق',
          userType: UserType.maintenanceBot,
          permissions: PermissionsSet.fromSet({
            UserPermission.approved,
            UserPermission.readAllData,
          }),
          adminOn: [
            AdminOnData(permissionId: 'maintenance-bot_s1', service: service),
          ],
        ),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.groups.map((group) => group.kind),
        [UserAdminGroupKind.automatedAccounts],
      ),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'no automated accounts group is shown when there is no automated '
      'account',
      setUp: () => stubUsers([servantWithoutScope]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(
        cubit.state.groups.map((group) => group.kind),
        [UserAdminGroupKind.unscoped],
      ),
    );
  });
}
