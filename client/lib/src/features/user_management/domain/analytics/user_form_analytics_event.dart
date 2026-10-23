import 'package:church_admin/church_admin.dart';

sealed class UserFormAnalyticsEvent extends AnalyticsEvent {
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
    'added_area_count': addedAreaCount,
    'removed_area_count': removedAreaCount,
    'added_service_count': addedServiceCount,
    'removed_service_count': removedServiceCount,
    'added_group_count': addedGroupCount,
    'removed_group_count': removedGroupCount,
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
  final Json scopeProperties;

  @override
  String get objectAction => 'service_scope_copy';

  @override
  Json get properties => scopeProperties;

  ServiceScopeCopy(UserAdminScope scope)
    : scopeProperties = AnalyticsEntityType.propertiesOf(scope.object);
}

final class AdminScopeDelete extends UserFormAnalyticsEvent {
  final Json scopeProperties;

  @override
  String get objectAction => 'scope_delete';

  @override
  Json get properties => scopeProperties;

  AdminScopeDelete(UserAdminScope scope)
    : scopeProperties = AnalyticsEntityType.propertiesOf(scope.object);
}

final class AdminScopePermissionToggle extends UserFormAnalyticsEvent {
  final Json scopeProperties;
  final AdminScopePermission permission;
  final bool isEnabled;

  @override
  String get objectAction => 'scope_permission_toggle';

  @override
  Json get properties => {
    ...scopeProperties,
    'permission': permission.name,
    'is_enabled': isEnabled,
  };

  AdminScopePermissionToggle(
    UserAdminScope scope,
    this.permission, {
    required this.isEnabled,
  }) : scopeProperties = AnalyticsEntityType.propertiesOf(scope.object);
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
  Json get properties => {
    'validity_duration_ms': validity.inMilliseconds,
  };

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
