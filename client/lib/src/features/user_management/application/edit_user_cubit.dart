import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class EditUserCubit extends UserFormCubit {
  final User _originalUser;
  final UsersDAO _usersDao;
  final UserPermissionsDAO _permissionsDao;
  final InvitationsDAO _invitationsDao;

  EditUserCubit({
    required User user,
    UsersDAO? usersDao,
    UserPermissionsDAO? permissionsDao,
    InvitationsDAO? invitationsDao,
  }) : _originalUser = user,
       _usersDao = usersDao ?? DatabaseService.I.users,
       _permissionsDao = permissionsDao ?? DatabaseService.I.userPermissions,
       _invitationsDao = invitationsDao ?? DatabaseService.I.invitations,
       super(UserDraft.fromUser(user));

  @override
  @protected
  Future<String> persist(UserDraft draft) async {
    await _permissionsDao.updateUserPermissions(
      userId: _originalUser.uid,
      oldPermissions: _originalUser.permissions,
      newPermissions: draft.permissions.validated(),
      newAdminOn: draft.adminOn,
      oldAdminOn: _originalUser.adminOn ?? [],
    );

    final update = _buildUserUpdate(draft);

    if (update.hasChanges) {
      await _usersDao.updateUser(update);
    }

    await _persistInvitation(draft);

    return _originalUser.uid;
  }

  UserUpdate _buildUserUpdate(UserDraft draft) {
    final oldPersonId = _personIdOf(UserDraft.fromUser(_originalUser).person);
    final newPersonId = _personIdOf(draft.person);

    return UserUpdate(
      uid: _originalUser.uid,
      email: draft.email != (_originalUser.email ?? '') ? draft.email : null,
      linkPersonId: newPersonId != oldPersonId ? newPersonId : null,
      unlinkPersonId: oldPersonId != null && oldPersonId != newPersonId
          ? oldPersonId
          : null,
    );
  }

  String? _personIdOf(PersonLink person) => switch (person) {
    LinkExistingPerson(:final person) => person.id,
    NoPersonSelected() || CreateNewPerson() => null,
  };

  Future<void> _persistInvitation(UserDraft draft) async {
    switch (draft.invitation) {
      case InvitationRequest(:final expiresAt)
          when _originalUser.invitation == null:
        await _invitationsDao.createInvitation(
          userUid: _originalUser.uid,
          expiresAt: expiresAt,
        );

      case ExistingInvitation(:final invitation)
          when invitation.expiresAt != _originalUser.invitation?.expiresAt:
        await _invitationsDao.updateInvitationExpiry(
          id: invitation.id,
          expiresAt: invitation.expiresAt,
        );

      case InvitationRequest() || ExistingInvitation() || NoInvitation():
        return;
    }
  }
}
