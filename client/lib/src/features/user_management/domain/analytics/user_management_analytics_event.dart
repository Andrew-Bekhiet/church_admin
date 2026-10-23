import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';

sealed class UserManagementAnalyticsEvent extends AnalyticsEvent {
  static String failureKindOf(Object? error) => switch (error) {
    null => 'none',
    UserFormValidationError() => 'validation',
    PersonAlreadyLinkedException() ||
    FirebaseFunctionsException(
      message: 'user/person-already-linked',
    ) => 'person_already_linked',
    FirebaseFunctionsException(message: 'user/email-taken') => 'email_taken',
    FirebaseFunctionsException(message: 'user/name-taken') => 'name_taken',
    FirebaseFunctionsException(message: 'invitation/scope-required') =>
      'scope_required',
    FirebaseFunctionsException(message: 'invitation/scope-not-manageable') =>
      'scope_not_manageable',
    _ => 'unknown',
  };

  static Json scopeCountsOf(Iterable<AdminOnData> adminOn, String suffix) => {
    for (final type in AdminScopeType.values)
      '${type.name}_$suffix': adminOn
          .where((scope) => AdminScopeType.of(scope) == type)
          .length,
  };

  @override
  String get category => 'user_management';

  const UserManagementAnalyticsEvent();
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
  Json get properties => {'view': view.name};

  const ManageUsersViewSwitch(this.view);
}

final class ManageUsersGroupToggle extends UserManagementAnalyticsEvent {
  final UserAdminGroup group;
  final bool isExpanded;

  @override
  String get objectAction => 'group_toggle';

  @override
  Json get properties => {
    'group_kind': group.kind.name,
    'is_expanded': isExpanded,
    'user_count': group.userCount,
    ...switch (group.scope) {
      Area(:final id) => {'area_id': id},
      Service(:final id) => {'service_id': id},
      _ => const {},
    },
  };

  const ManageUsersGroupToggle(this.group, {required this.isExpanded});
}

final class UserCreateTap extends UserManagementAnalyticsEvent {
  @override
  String get objectAction => 'user_create_tap';

  const UserCreateTap();
}

final class UserCreate extends UserManagementAnalyticsEvent {
  final UserDraft draft;
  final Object? failure;

  @override
  String get objectAction => 'user_create';

  @override
  Json get properties => {
    'is_success': failure == null,
    'failure_kind': UserManagementAnalyticsEvent.failureKindOf(failure),
    'permission_count': draft.permissions.length,
    ...UserManagementAnalyticsEvent.scopeCountsOf(draft.adminOn, 'count'),
    'has_invitation': draft.invitation is InvitationRequest,
    'person_link_mode': PersonLinkMode.of(draft.person).name,
  };

  const UserCreate(this.draft, {this.failure});
}

final class UserSave extends UserManagementAnalyticsEvent {
  final User user;
  final UserDraft draft;
  final Object? failure;

  @override
  String get objectAction => 'user_save';

  @override
  Json get properties {
    final newPermissions = draft.permissions.validated();
    final keptScopeIds = draft.adminOn.map((scope) => scope.permissionId);

    return {
      'user_id': user.uid,
      'is_success': failure == null,
      'failure_kind': UserManagementAnalyticsEvent.failureKindOf(failure),
      'permissions_added': [
        for (final permission in newPermissions.difference(user.permissions))
          permission.name,
      ],
      'permissions_removed': [
        for (final permission in user.permissions.difference(newPermissions))
          permission.name,
      ],
      ...UserManagementAnalyticsEvent.scopeCountsOf(
        draft.adminOn.where((scope) => scope.permissionId.isEmpty),
        'added_count',
      ),
      ...UserManagementAnalyticsEvent.scopeCountsOf(
        [...?user.adminOn].where(
          (scope) => !keptScopeIds.contains(scope.permissionId),
        ),
        'removed_count',
      ),
      'person_link_change': PersonLinkChange.between(
        user.person?.id,
        draft.person,
      ).name,
    };
  }

  const UserSave(this.user, this.draft, {this.failure});
}

final class UserApprove extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'user_approve';

  @override
  Json get properties => {'user_id': userId, 'is_success': isSuccess};

  const UserApprove(this.userId, {required this.isSuccess});
}

final class UserUnapprove extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'user_unapprove';

  @override
  Json get properties => {'user_id': userId, 'is_success': isSuccess};

  const UserUnapprove(this.userId, {required this.isSuccess});
}

final class UserPasswordResetSend extends UserManagementAnalyticsEvent {
  final String userId;
  final bool isSuccess;

  @override
  String get objectAction => 'password_reset_send';

  @override
  Json get properties => {'user_id': userId, 'is_success': isSuccess};

  const UserPasswordResetSend(this.userId, {required this.isSuccess});
}

final class AccountDeletionAnswer extends UserManagementAnalyticsEvent {
  final int step;
  final bool isConfirmed;

  @override
  String get objectAction => 'account_deletion_answer';

  @override
  Json get properties => {'step': step, 'is_confirmed': isConfirmed};

  const AccountDeletionAnswer({required this.step, required this.isConfirmed});
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

enum PersonLinkMode {
  link,
  create,
  none;

  static PersonLinkMode of(PersonLink person) => switch (person) {
    LinkExistingPerson() => link,
    CreateNewPerson() => create,
    NoPersonSelected() => none,
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
