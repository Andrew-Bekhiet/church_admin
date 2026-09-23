import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockUserPermissionsDAO extends Mock implements UserPermissionsDAO {}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _FakeUsersDAO extends Fake implements UsersDAO {
  UserUpdate? lastUpdate;
  String storedName = 'مينا';
  String? linkedPersonId = 'p1';

  @override
  Future<void> updateUser(UserUpdate update) async {
    lastUpdate = update;
    storedName = update.name ?? storedName;
    if (update.unlinkPersonId == linkedPersonId) {
      linkedPersonId = null;
    }
    linkedPersonId = update.linkPersonId ?? linkedPersonId;
  }
}

class _FlakyUsersDAO extends Fake implements UsersDAO {
  int failuresLeft = 1;

  @override
  Future<void> updateUser(UserUpdate update) async {
    if (failuresLeft > 0) {
      failuresLeft--;
      throw PersonAlreadyLinkedException(update.linkPersonId ?? '');
    }
  }
}

class _StoredUserPermissionsDAO extends Fake implements UserPermissionsDAO {
  PermissionsSet stored;

  _StoredUserPermissionsDAO(this.stored);

  @override
  Future<void> updateUserPermissions({
    required String userId,
    required PermissionsSet newPermissions,
    required PermissionsSet oldPermissions,
    required List<AdminOnData> newAdminOn,
    required List<AdminOnData> oldAdminOn,
  }) async {
    if (newPermissions.difference(oldPermissions).any(stored.contains)) {
      throw StateError('permission already granted');
    }

    stored = newPermissions;
  }
}

class _FakeInvitationsDAO extends Fake implements InvitationsDAO {
  String? createdForUserUid;
  DateTime? createdExpiresAt;
  String? updatedInvitationId;
  DateTime? updatedExpiresAt;

  @override
  Future<Invitation> createInvitation({
    required String userUid,
    required DateTime expiresAt,
  }) async {
    createdForUserUid = userUid;
    createdExpiresAt = expiresAt;

    return Invitation(
      id: 'new-invitation',
      userUid: userUid,
      code: 'code',
      createdAt: DateTime(2026),
      expiresAt: expiresAt,
    );
  }

  @override
  Future<void> updateInvitationExpiry({
    required String id,
    required DateTime expiresAt,
  }) async {
    updatedInvitationId = id;
    updatedExpiresAt = expiresAt;
  }
}

void main() {
  group('EditUserCubit', () {
    final person1 = Person(id: 'p1', name: 'مينا');
    final person2 = Person(id: 'p2', name: 'مريم', gender: false);

    late _MockUserPermissionsDAO permissionsDao;
    late _FakeUsersDAO usersDao;
    late _FakeInvitationsDAO invitationsDao;
    late _MockAuthBloc authBloc;

    setUpAll(() {
      registerFallbackValue(const PermissionsSet.empty());
    });

    setUp(() {
      permissionsDao = _MockUserPermissionsDAO();
      usersDao = _FakeUsersDAO();
      invitationsDao = _FakeInvitationsDAO();
      authBloc = _MockAuthBloc();

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
      usersDao: usersDao,
      permissionsDao: permissionsDao,
      invitationsDao: invitationsDao,
      authBloc: authBloc,
    );

    blocTest<EditUserCubit, UserFormState>(
      'changing only permissions leaves the user record untouched',
      build: () => buildCubit(User(uid: 'u1', name: 'مينا', person: person1)),
      act: (cubit) {
        cubit.togglePermission(UserPermission.approved);
        return cubit.save();
      },
      verify: (_) => expect(usersDao.lastUpdate, isNull),
    );

    blocTest<EditUserCubit, UserFormState>(
      'picking a different person updates the link and account name',
      build: () => buildCubit(User(uid: 'u1', name: 'مينا', person: person1)),
      act: (cubit) {
        cubit.selectPerson(LinkExistingPerson(person2));
        return cubit.save();
      },
      verify: (_) {
        expect(usersDao.linkedPersonId, 'p2');
        expect(usersDao.storedName, 'مريم');
      },
    );

    blocTest<EditUserCubit, UserFormState>(
      'requesting an invitation for a user without one creates it',
      build: () => buildCubit(User(uid: 'u1', name: 'مينا', person: person1)),
      act: (cubit) {
        cubit.setInvitation(InvitationRequest(DateTime(2026, 2)));
        return cubit.save();
      },
      verify: (_) {
        expect(invitationsDao.createdForUserUid, 'u1');
        expect(invitationsDao.createdExpiresAt, DateTime(2026, 2));
      },
    );

    blocTest<EditUserCubit, UserFormState>(
      'changing the expiry of an existing invitation updates it',
      build: () => buildCubit(
        User(
          uid: 'u1',
          name: 'مينا',
          person: person1,
          invitation: Invitation(
            id: 'inv1',
            userUid: 'u1',
            code: 'code',
            createdAt: DateTime(2026),
            expiresAt: DateTime(2026, 1, 8),
          ),
        ),
      ),
      act: (cubit) {
        cubit.setInvitation(
          ExistingInvitation(
            Invitation(
              id: 'inv1',
              userUid: 'u1',
              code: 'code',
              createdAt: DateTime(2026),
              expiresAt: DateTime(2026, 1, 20),
            ),
          ),
        );
        return cubit.save();
      },
      verify: (_) {
        expect(invitationsDao.updatedInvitationId, 'inv1');
        expect(invitationsDao.updatedExpiresAt, DateTime(2026, 1, 20));
      },
    );

    blocTest<EditUserCubit, UserFormState>(
      'saving again after a failed person link does not grant the same permission twice',
      build: () => EditUserCubit(
        user: User(
          uid: 'u1',
          name: 'مينا',
          person: person1,
          permissions: const PermissionsSet.fromSet({UserPermission.approved}),
        ),
        usersDao: _FlakyUsersDAO(),
        permissionsDao: _StoredUserPermissionsDAO(
          const PermissionsSet.fromSet({UserPermission.approved}),
        ),
        invitationsDao: invitationsDao,
        authBloc: authBloc,
      ),
      act: (cubit) async {
        cubit
          ..togglePermission(UserPermission.readAllData)
          ..selectPerson(LinkExistingPerson(person2));
        await cubit.save();

        return cubit.save();
      },
      skip: 5,
      expect: () => [isA<UserFormSaved>()],
    );

    group('restricting admin scopes to what the manager can access', () {
      const area = Area(id: 'area1', name: 'منطقة');
      const service = Service(id: 'service1', name: 'خدمة');
      const group = Group(id: 'group1', name: 'مجموعة');

      const originalAreaScope = AdminOnData(
        permissionId: 'p-area',
        area: area,
        areaAllowEdit: false,
      );
      const originalServiceScope = AdminOnData(
        permissionId: 'p-service',
        service: service,
        serviceAllowEdit: false,
      );
      const originalGroupScope = AdminOnData(
        permissionId: 'p-group',
        group: group,
        groupAllowEdit: false,
      );

      User editedUser({List<UserPermission> extraPermissions = const []}) =>
          User(
            uid: 'u1',
            name: 'مينا',
            person: person1,
            permissions: PermissionsSet.fromSet({
              UserPermission.approved,
              ...extraPermissions,
            }),
            adminOn: const [
              originalAreaScope,
              originalServiceScope,
              originalGroupScope,
            ],
          );

      setUp(() {
        when(() => authBloc.currentUserData).thenReturn(
          const User(
            uid: 'manager',
            name: 'مدير',
            adminOn: [
              AdminOnData(
                permissionId: 'manager-area',
                area: area,
                areaAdminOnUsers: true,
              ),
            ],
          ),
        );
      });

      List<AdminOnData> capturedAdminOn() =>
          verify(
                () => permissionsDao.updateUserPermissions(
                  userId: any(named: 'userId'),
                  newPermissions: any(named: 'newPermissions'),
                  oldPermissions: any(named: 'oldPermissions'),
                  newAdminOn: captureAny(named: 'newAdminOn'),
                  oldAdminOn: any(named: 'oldAdminOn'),
                ),
              ).captured.single
              as List<AdminOnData>;

      blocTest<EditUserCubit, UserFormState>(
        'editing scopes beyond the manager access only sends the change to the accessible scope',
        build: () => buildCubit(editedUser()),
        act: (cubit) {
          cubit.setAdminOn([
            originalAreaScope.copyWith(areaAllowEdit: true),
            originalServiceScope.copyWith(serviceAllowEdit: true),
            originalGroupScope.copyWith(groupAllowEdit: true),
          ]);
          return cubit.save();
        },
        verify: (_) {
          final newAdminOn = capturedAdminOn();

          expect(
            newAdminOn,
            containsAll([
              originalAreaScope.copyWith(areaAllowEdit: true),
              originalServiceScope,
              originalGroupScope,
            ]),
          );
        },
      );

      blocTest<EditUserCubit, UserFormState>(
        'removing scopes the manager cannot access leaves them in place',
        build: () => buildCubit(editedUser()),
        act: (cubit) {
          cubit.setAdminOn([originalAreaScope]);
          return cubit.save();
        },
        verify: (_) {
          final newAdminOn = capturedAdminOn();

          expect(
            newAdminOn,
            containsAll([
              originalAreaScope,
              originalServiceScope,
              originalGroupScope,
            ]),
          );
        },
      );

      blocTest<EditUserCubit, UserFormState>(
        'a manager with manageAllUsers can change every scope',
        build: () => buildCubit(editedUser()),
        setUp: () => when(() => authBloc.currentUserData).thenReturn(
          const User(
            uid: 'manager',
            name: 'مدير',
            permissions: PermissionsSet.fromSet({
              UserPermission.manageAllUsers,
            }),
          ),
        ),
        act: (cubit) {
          cubit.setAdminOn([
            originalAreaScope.copyWith(areaAllowEdit: true),
            originalServiceScope.copyWith(serviceAllowEdit: true),
          ]);
          return cubit.save();
        },
        verify: (_) {
          final newAdminOn = capturedAdminOn();

          expect(
            newAdminOn,
            unorderedEquals([
              originalAreaScope.copyWith(areaAllowEdit: true),
              originalServiceScope.copyWith(serviceAllowEdit: true),
            ]),
          );
        },
      );
    });
  });
}
