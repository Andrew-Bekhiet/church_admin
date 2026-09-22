import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockUserPermissionsDAO extends Mock implements UserPermissionsDAO {}

class _FakeUsersDAO extends Fake implements UsersDAO {
  UserUpdate? lastUpdate;

  @override
  Future<void> updateUser(UserUpdate update) async {
    lastUpdate = update;
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

    setUpAll(() {
      registerFallbackValue(const PermissionsSet.empty());
    });

    setUp(() {
      permissionsDao = _MockUserPermissionsDAO();
      usersDao = _FakeUsersDAO();
      invitationsDao = _FakeInvitationsDAO();

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
      'picking a different person unlinks the old one and links the new one',
      build: () => buildCubit(User(uid: 'u1', name: 'مينا', person: person1)),
      act: (cubit) {
        cubit.selectPerson(LinkExistingPerson(person2));
        return cubit.save();
      },
      verify: (_) => expect(
        usersDao.lastUpdate,
        const UserUpdate(
          uid: 'u1',
          linkPersonId: 'p2',
          unlinkPersonId: 'p1',
        ),
      ),
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
  });
}
