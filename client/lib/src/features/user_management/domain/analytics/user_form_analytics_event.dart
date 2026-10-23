import 'package:church_admin/church_admin.dart';

sealed class UserFormAnalyticsEvent extends AnalyticsEvent {
  static Json scopePropertiesOf(UserAdminScope scope) => switch (scope.object) {
    Area(:final id) => {'scope_type': AdminScopeType.area.name, 'area_id': id},
    Service(:final id) => {
      'scope_type': AdminScopeType.service.name,
      'service_id': id,
    },
    Group(:final id) => {
      'scope_type': AdminScopeType.group.name,
      'group_id': id,
    },
    _ => const {},
  };

  @override
  String get category => 'user_management';

  const UserFormAnalyticsEvent();
}

final class PersonLinkModeSwitch extends UserFormAnalyticsEvent {
  final PersonLinkMode mode;

  @override
  String get objectAction => 'person_link_mode_switch';

  @override
  Json get properties => {'person_link_mode': mode.name};

  const PersonLinkModeSwitch(this.mode);
}

final class AdminScopesApply extends UserFormAnalyticsEvent {
  final int addedAreaCount;
  final int removedAreaCount;
  final int addedServiceCount;
  final int removedServiceCount;
  final int addedGroupCount;
  final int removedGroupCount;

  @override
  String get objectAction => 'scopes_apply';

  @override
  Json get properties => {
    'area_added_count': addedAreaCount,
    'area_removed_count': removedAreaCount,
    'service_added_count': addedServiceCount,
    'service_removed_count': removedServiceCount,
    'group_added_count': addedGroupCount,
    'group_removed_count': removedGroupCount,
  };

  const AdminScopesApply({
    required this.addedAreaCount,
    required this.removedAreaCount,
    required this.addedServiceCount,
    required this.removedServiceCount,
    required this.addedGroupCount,
    required this.removedGroupCount,
  });
}

final class ServiceScopeCopy extends UserFormAnalyticsEvent {
  final UserAdminScope scope;

  @override
  String get objectAction => 'service_scope_copy';

  @override
  Json get properties => UserFormAnalyticsEvent.scopePropertiesOf(scope);

  const ServiceScopeCopy(this.scope);
}

final class AdminScopeDelete extends UserFormAnalyticsEvent {
  final UserAdminScope scope;

  @override
  String get objectAction => 'scope_delete';

  @override
  Json get properties => UserFormAnalyticsEvent.scopePropertiesOf(scope);

  const AdminScopeDelete(this.scope);
}

final class AdminScopePermissionToggle extends UserFormAnalyticsEvent {
  final UserAdminScope scope;
  final AdminScopePermission permission;
  final bool isEnabled;

  @override
  String get objectAction => 'scope_permission_toggle';

  @override
  Json get properties => {
    ...UserFormAnalyticsEvent.scopePropertiesOf(scope),
    'permission': permission.name,
    'is_enabled': isEnabled,
  };

  const AdminScopePermissionToggle(
    this.scope,
    this.permission, {
    required this.isEnabled,
  });
}

final class InvitationToggle extends UserFormAnalyticsEvent {
  final bool isEnabled;

  @override
  String get objectAction => 'invitation_toggle';

  @override
  Json get properties => {'is_enabled': isEnabled};

  const InvitationToggle({required this.isEnabled});
}

final class InvitationExpiryChange extends UserFormAnalyticsEvent {
  final Duration validity;

  @override
  String get objectAction => 'invitation_expiry_change';

  @override
  Json get properties => {'validity_days': validity.inDays};

  const InvitationExpiryChange(this.validity);
}

final class InvitationCodeShare extends UserFormAnalyticsEvent {
  @override
  String get objectAction => 'invitation_code_share';

  const InvitationCodeShare();
}

final class InvitationCodeCopy extends UserFormAnalyticsEvent {
  @override
  String get objectAction => 'invitation_code_copy';

  const InvitationCodeCopy();
}

enum AdminScopePermission {
  manageUsers,
  writeData,
  recordAttendance,
  recordServantsAttendance,
  exportData,
  writeRelatedFamilies,
}
