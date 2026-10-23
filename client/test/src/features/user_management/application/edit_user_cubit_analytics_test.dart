import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockUserPermissionsDAO extends Mock implements UserPermissionsDAO {}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _FakeUsersDAO extends Fake implements UsersDAO {
  @override
  Future<void> updateUser(UserUpdate update) async {}
}

class _FakeInvitationsDAO extends Fake implements InvitationsDAO {}

void main() {
  group('EditUserCubit analytics', () {
    final person1 = Person(id: 'p1', name: 'مينا');
    final person2 = Person(id: 'p2', name: 'مريم', gender: false);

    late _MockUserPermissionsDAO permissionsDao;
    late _MockAuthBloc authBloc;
    late RecordingAnalyticsProvider analytics;

    setUpAll(() {
      registerFallbackValue(const PermissionsSet.empty());
    });

    setUp(() {
      permissionsDao = _MockUserPermissionsDAO();
      authBloc = _MockAuthBloc();
      analytics = RecordingAnalyticsProvider();

      when(() => authBloc.currentUserData).thenReturn(
        const User(
          uid: 'manager',
          name: 'مدير',
          permissions: PermissionsSet.fromSet({
            UserPermission.manageAllUsers,
          }),
        ),
      );

      when(
        () => permissionsDao.updateUserPermissions(
          userId: any(named: 'userId'),
          newPermissions: any(named: 'newPermissions'),
          oldPermissions: any(named: 'oldPermissions'),
          newAdminOn: any(named: 'newAdminOn'),
          oldAdminOn: any(named: 'oldAdminOn'),
        ),
      ).thenAnswer((_) async {});
    });

    EditUserCubit buildCubit(User user) => EditUserCubit(
      user: user,
      usersDao: _FakeUsersDAO(),
      permissionsDao: permissionsDao,
      invitationsDao: _FakeInvitationsDAO(),
      authBloc: authBloc,
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    );

    Json trackedSaveProperties() =>
        analytics.trackedEvents.whereType<UserSave>().single.properties;

    blocTest<EditUserCubit, UserFormState>(
      'saving tracks which permissions were granted and which were revoked',
      build: () => buildCubit(
        User(
          uid: 'u1',
          name: 'مينا',
          person: person1,
          permissions: const PermissionsSet.fromSet({
            UserPermission.approved,
            UserPermission.deleteData,
          }),
        ),
      ),
      act: (cubit) {
        cubit
          ..togglePermission(UserPermission.deleteData)
          ..togglePermission(UserPermission.readAllData);

        return cubit.save();
      },
      verify: (_) => expect(
        trackedSaveProperties(),
        allOf(
          containsPair('permissions_added', [UserPermission.readAllData.name]),
          containsPair('permissions_removed', [UserPermission.deleteData.name]),
        ),
      ),
    );

    blocTest<EditUserCubit, UserFormState>(
      'saving tracks how many scopes of each type were added and removed',
      build: () => buildCubit(
        User(
          uid: 'u1',
          name: 'مينا',
          person: person1,
          adminOn: const [
            AdminOnData(
              permissionId: 'area-scope',
              area: Area(id: 'a1', name: 'منطقة'),
            ),
            AdminOnData(
              permissionId: 'service-scope',
              service: Service(id: 's1', name: 'خدمة'),
            ),
          ],
        ),
      ),
      act: (cubit) {
        cubit.setAdminOn(const [
          AdminOnData(
            permissionId: 'area-scope',
            area: Area(id: 'a1', name: 'منطقة'),
          ),
          AdminOnData(
            permissionId: '',
            group: Group(id: 'g1', name: 'مجموعة'),
          ),
        ]);

        return cubit.save();
      },
      verify: (_) => expect(
        trackedSaveProperties(),
        allOf(
          containsPair('area_added_count', 0),
          containsPair('group_added_count', 1),
          containsPair('area_removed_count', 0),
          containsPair('service_removed_count', 1),
        ),
      ),
    );

    blocTest<EditUserCubit, UserFormState>(
      'linking a different person is tracked as relinking',
      build: () => buildCubit(User(uid: 'u1', name: 'مينا', person: person1)),
      act: (cubit) {
        cubit.selectPerson(LinkExistingPerson(person2));

        return cubit.save();
      },
      verify: (_) => expect(
        trackedSaveProperties(),
        containsPair('person_link_change', PersonLinkChange.relinked.name),
      ),
    );
  });
}
