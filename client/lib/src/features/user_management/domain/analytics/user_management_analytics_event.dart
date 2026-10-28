part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class UserManagementAnalyticsEvent extends AnalyticsEvent {
  static AttemptFailed failedOutcomeOf(Object error) => AttemptFailed(
    switch (error) {
      UserFormValidationError() => 'validation',
      PersonAlreadyLinkedException() ||
      FirebaseFunctionsException(
        message: 'user/person-already-linked',
      ) => 'person_already_linked',
      FirebaseFunctionsException(message: 'user/email-taken') => 'email_taken',
      FirebaseFunctionsException(message: 'user/name-taken') => 'name_taken',
      FirebaseFunctionsException(message: 'invitation/scope-required') =>
        'scope_required',
      FirebaseFunctionsException(
        message: 'invitation/scope-not-manageable',
      ) =>
        'scope_not_manageable',
      _ => 'unknown',
    },
  );

  static Json scopeCountsOf(
    Iterable<AdminOnData> adminOn, {
    String prefix = '',
  }) => {
    for (final type in AdminScopeType.values)
      '$prefix${type.name}_count': adminOn
          .where((scope) => AdminScopeType.of(scope) == type)
          .length,
  };

  static Json userPropertiesOf(String userId) => {
    'entity_type': AnalyticsEntityType.user.key,
    AnalyticsEntityType.user.idProperty: userId,
  };

  @override
  String get category => 'user_management';

  const UserManagementAnalyticsEvent();
}

sealed class UserSaveAttemptEvent extends UserManagementAnalyticsEvent {
  final AttemptOutcome outcome;

  @override
  Json get properties => outcome.properties;

  const UserSaveAttemptEvent(this.outcome);
}

final class ManageUsersSearchRun extends UserManagementAnalyticsEvent {
  final int queryLength;
  final ManageUsersView preferredView;

  @override
  String get objectAction => 'search_run';

  @override
  Json get properties => {
    'query_length': queryLength,
    'preferred_view': preferredView.name,
  };

  const ManageUsersSearchRun({
    required this.queryLength,
    required this.preferredView,
  });
}

final class ManageUsersViewSwitch extends UserManagementAnalyticsEvent {
  final ManageUsersView view;

  @override
  String get objectAction => 'view_switch';

  @override
  Json get properties => {'selected_view': view.name};

  const ManageUsersViewSwitch(this.view);
}

final class ManageUsersGroupToggle extends UserManagementAnalyticsEvent {
  final UserAdminGroupKind groupKind;
  final bool isExpanded;
  final int userCount;
  final Json scopeProperties;

  @override
  String get objectAction => 'group_toggle';

  @override
  Json get properties => {
    'group_kind': groupKind.name,
    'is_expanded': isExpanded,
    'user_count': userCount,
    ...scopeProperties,
  };

  ManageUsersGroupToggle(UserAdminGroup group, {required this.isExpanded})
    : groupKind = group.kind,
      userCount = group.userCount,
      scopeProperties = AnalyticsEntityType.propertiesOf(group.scope);
}

final class UserCreateTap extends UserManagementAnalyticsEvent {
  @override
  String get objectAction => 'user_create_tap';

  const UserCreateTap();
}

final class UserCreate extends UserSaveAttemptEvent {
  final int permissionCount;
  final Json scopeCounts;
  final bool hasInvitation;
  final PersonLinkMode personLinkMode;

  @override
  String get objectAction => 'user_create';

  @override
  Json get properties => {
    ...super.properties,
    'permission_count': permissionCount,
    ...scopeCounts,
    'has_invitation': hasInvitation,
    'person_link_mode': personLinkMode.name,
  };

  UserCreate(UserDraft draft, super.outcome)
    : permissionCount = draft.permissions.validated().length,
      scopeCounts = UserManagementAnalyticsEvent.scopeCountsOf(draft.adminOn),
      hasInvitation = draft.invitation is InvitationRequest,
      personLinkMode = PersonLinkMode.of(draft.person);
}

final class UserSave extends UserSaveAttemptEvent {
  final String userId;
  final List<String> addedPermissions;
  final List<String> removedPermissions;
  final Json addedScopeCounts;
  final Json removedScopeCounts;
  final PersonLinkChange personLinkChange;

  @override
  String get objectAction => 'user_save';

  @override
  Json get properties => {
    ...super.properties,
    ...UserManagementAnalyticsEvent.userPropertiesOf(userId),
    'added_permissions': addedPermissions,
    'removed_permissions': removedPermissions,
    ...addedScopeCounts,
    ...removedScopeCounts,
    'person_link_change': personLinkChange.name,
  };

  UserSave(User user, UserDraft draft, super.outcome)
    : userId = user.uid,
      addedPermissions = [
        for (final permission in draft.permissions.validated().difference(
          user.permissions,
        ))
          permission.name,
      ],
      removedPermissions = [
        for (final permission in user.permissions.difference(
          draft.permissions.validated(),
        ))
          permission.name,
      ],
      addedScopeCounts = UserManagementAnalyticsEvent.scopeCountsOf(
        draft.adminOn.where((scope) => scope.permissionId.isEmpty),
        prefix: 'added_',
      ),
      removedScopeCounts = UserManagementAnalyticsEvent.scopeCountsOf(
        [...?user.adminOn].where(
          (scope) => !draft.adminOn
              .map((kept) => kept.permissionId)
              .contains(scope.permissionId),
        ),
        prefix: 'removed_',
      ),
      personLinkChange = PersonLinkChange.between(
        user.person?.id,
        draft.person,
      );
}

final class UserApprove extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'user_approve';

  @override
  Json get properties => {
    ...UserManagementAnalyticsEvent.userPropertiesOf(userId),
    'is_success': isSuccess,
  };

  const UserApprove(this.userId, {required this.isSuccess});
}

final class UserUnapprove extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'user_unapprove';

  @override
  Json get properties => {
    ...UserManagementAnalyticsEvent.userPropertiesOf(userId),
    'is_success': isSuccess,
  };

  const UserUnapprove(this.userId, {required this.isSuccess});
}

final class UserPasswordResetSend extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'password_reset_send';

  @override
  Json get properties => {
    ...UserManagementAnalyticsEvent.userPropertiesOf(userId),
    'is_success': isSuccess,
  };

  const UserPasswordResetSend(this.userId, {required this.isSuccess});
}

final class AccountDeletionAnswer extends UserManagementAnalyticsEvent {
  final int confirmationStep;
  final bool isConfirmed;

  @override
  String get objectAction => 'account_deletion_answer';

  @override
  Json get properties => {
    'confirmation_step': confirmationStep,
    'is_confirmed': isConfirmed,
  };

  const AccountDeletionAnswer({
    required this.confirmationStep,
    required this.isConfirmed,
  });
}

final class MyAccountDelete extends UserManagementAnalyticsEvent {
  final bool isSuccess;

  @override
  String get objectAction => 'my_account_delete';

  @override
  Json get properties => {'is_success': isSuccess};

  const MyAccountDelete({required this.isSuccess});
}

final class AdminUsersOpen extends UserManagementAnalyticsEvent {
  final int adminCount;

  @override
  String get objectAction => 'admin_users_open';

  @override
  Json get properties => {'admin_count': adminCount};

  const AdminUsersOpen(this.adminCount);
}

enum AdminScopeType {
  area,
  service,
  group;

  static AdminScopeType? of(AdminOnData scope) => switch (scope) {
    AdminOnData(area: _?) => area,
    AdminOnData(service: _?) => service,
    AdminOnData(group: _?) => group,
    _ => null,
  };
}

enum PersonLinkChange {
  unchanged,
  linked,
  unlinked,
  relinked;

  static PersonLinkChange between(String? oldPersonId, PersonLink person) =>
      switch ((oldPersonId, person)) {
        (null, LinkExistingPerson()) => linked,
        (_?, LinkExistingPerson(:final person)) when person.id != oldPersonId =>
          relinked,
        (_?, NoPersonSelected() || CreateNewPerson()) => unlinked,
        _ => unchanged,
      };
}
