import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class EditUserCubit extends UserFormCubit {
  User _persistedUser;
  final UsersDAO _usersDao;
  final UserPermissionsDAO _permissionsDao;
  final InvitationsDAO _invitationsDao;
  final AuthBloc _authBloc;

  EditUserCubit({
    required User user,
    UsersDAO? usersDao,
    UserPermissionsDAO? permissionsDao,
    InvitationsDAO? invitationsDao,
    AuthBloc? authBloc,
  }) : _persistedUser = user,
       _usersDao = usersDao ?? DatabaseService.I.users,
       _permissionsDao = permissionsDao ?? DatabaseService.I.userPermissions,
       _invitationsDao = invitationsDao ?? DatabaseService.I.invitations,
       _authBloc = authBloc ?? AuthBloc.I,
       super(UserDraft.fromUser(user));

  @override
  @protected
  Future<String> persist(UserDraft draft) async {
    final newPermissions = draft.permissions.validated();
    final newAdminOn = _restrictAdminOnToCallerScopes(draft.adminOn);

    await _permissionsDao.updateUserPermissions(
      userId: _persistedUser.uid,
      oldPermissions: _persistedUser.permissions,
      newPermissions: newPermissions,
      newAdminOn: newAdminOn,
      oldAdminOn: _persistedUser.adminOn ?? [],
    );
    _persistedUser = _persistedUser.copyWith(
      permissions: newPermissions,
      adminOn: newAdminOn,
    );

    final update = _buildUserUpdate(draft);

    if (update.hasChanges) {
      await _usersDao.updateUser(update);
      _persistedUser = _persistedUser.copyWith(
        name: draft.name,
        email: draft.email.isEmpty ? null : draft.email,
        person: switch (draft.person) {
          LinkExistingPerson(:final person) => person,
          NoPersonSelected() || CreateNewPerson() => null,
        },
      );
    }

    await _persistInvitation(draft);

    return _persistedUser.uid;
  }

  List<AdminOnData> _restrictAdminOnToCallerScopes(
    List<AdminOnData> newAdminOn,
  ) {
    final caller = _authBloc.currentUserData;
    if (caller?.permissions.manageAllUsers ?? false) return newAdminOn;

    final callerAdminOn = caller?.adminOn ?? [];

    bool callerCanManage(AdminOnData data) => callerAdminOn.any(
      (scope) =>
          (data.area != null &&
              scope.area?.id == data.area?.id &&
              (scope.areaAdminOnUsers ?? false)) ||
          (data.service != null &&
              scope.service?.id == data.service?.id &&
              (scope.serviceAdminOnUsers ?? false)) ||
          (data.group != null &&
              scope.group?.id == data.group?.id &&
              (scope.groupAdminOnUsers ?? false)),
    );

    return [
      ...(_persistedUser.adminOn ?? []).where((a) => !callerCanManage(a)),
      ...newAdminOn.where(callerCanManage),
    ];
  }

  UserUpdate _buildUserUpdate(UserDraft draft) {
    final oldPersonId = _personIdOf(UserDraft.fromUser(_persistedUser).person);
    final newPersonId = _personIdOf(draft.person);

    return UserUpdate(
      uid: _persistedUser.uid,
      name: draft.name != _persistedUser.name ? draft.name : null,
      email: draft.email != (_persistedUser.email ?? '') ? draft.email : null,
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
          when _persistedUser.invitation == null:
        final created = await _invitationsDao.createInvitation(
          userUid: _persistedUser.uid,
          expiresAt: expiresAt,
        );
        _persistedUser = _persistedUser.copyWith(invitation: created);

      case ExistingInvitation(:final invitation)
          when invitation.expiresAt != _persistedUser.invitation?.expiresAt:
        await _invitationsDao.updateInvitationExpiry(
          id: invitation.id,
          expiresAt: invitation.expiresAt,
        );
        _persistedUser = _persistedUser.copyWith(invitation: invitation);

      case InvitationRequest() || ExistingInvitation() || NoInvitation():
        return;
    }
  }
}
