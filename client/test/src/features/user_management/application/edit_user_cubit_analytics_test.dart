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
    const areaScope = AdminOnData(
      permissionId: 'area-scope',
      area: Area(id: 'a1', name: 'منطقة'),
    );
    const serviceScope = AdminOnData(
      permissionId: 'service-scope',
      service: Service(id: 's1', name: 'خدمة'),
    );
    const newGroupScope = AdminOnData(
      permissionId: '',
      group: Group(id: 'g1', name: 'مجموعة'),
    );
    final person1 = Person(id: 'p1', name: 'مينا');
    final person2 = Person(id: 'p2', name: 'مريم', gender: Gender.female);
    final editedUser = User(uid: 'u1', name: 'مينا', person: person1);

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

    Matcher savedUserWith({
      List<AdminOnData>? addedScopes,
      List<AdminOnData>? removedScopes,
      PersonLinkChange? personLinkChange,
    }) => isA<UserSave>()
        .having((event) => event.userId, 'userId', editedUser.uid)
        .having(
          (event) => event.addedScopes,
          'addedScopes',
          addedScopes ?? isEmpty,
        )
        .having(
          (event) => event.removedScopes,
          'removedScopes',
          removedScopes ?? isEmpty,
        )
        .having(
          (event) => event.personLinkChange,
          'personLinkChange',
          personLinkChange ?? PersonLinkChange.unchanged,
        );

    blocTest<EditUserCubit, UserFormState>(
      'saving tracks which scopes were added and which were removed',
      build: () => buildCubit(
        editedUser.copyWith(adminOn: const [areaScope, serviceScope]),
      ),
      act: (cubit) {
        cubit.setAdminOn(const [areaScope, newGroupScope]);

        return cubit.save();
      },
      verify: (_) => expect(
        analytics.trackedEventsOf<UserSave>().single,
        savedUserWith(
          addedScopes: [newGroupScope],
          removedScopes: [serviceScope],
        ),
      ),
    );

    blocTest<EditUserCubit, UserFormState>(
      'saving tracks the scopes that were stored, not the ones the caller '
      'could not manage',
      setUp: () => when(() => authBloc.currentUserData).thenReturn(
        const User(
          uid: 'area-manager',
          name: 'مسؤول',
          adminOn: [
            AdminOnData(
              permissionId: 'caller-scope',
              area: Area(id: 'a1', name: 'منطقة'),
              areaAdminOnUsers: true,
            ),
          ],
        ),
      ),
      build: () => buildCubit(
        editedUser.copyWith(adminOn: const [areaScope, serviceScope]),
      ),
      act: (cubit) {
        cubit.setAdminOn(const [areaScope, newGroupScope]);

        return cubit.save();
      },
      verify: (_) => expect(
        analytics.trackedEventsOf<UserSave>().single,
        savedUserWith(),
      ),
    );

    blocTest<EditUserCubit, UserFormState>(
      'saving is tracked against the edited user',
      build: () => buildCubit(editedUser),
      act: (cubit) => cubit.save(),
      verify: (_) => expect(
        analytics.trackedEventsOf<UserSave>().single,
        savedUserWith(),
      ),
    );

    blocTest<EditUserCubit, UserFormState>(
      'linking a different person is tracked as relinking',
      build: () => buildCubit(editedUser),
      act: (cubit) {
        cubit.selectPerson(LinkExistingPerson(person2));

        return cubit.save();
      },
      verify: (_) => expect(
        analytics.trackedEventsOf<UserSave>().single,
        savedUserWith(personLinkChange: PersonLinkChange.relinked),
      ),
    );
  });
}
