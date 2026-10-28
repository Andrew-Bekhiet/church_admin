part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class UserFormAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'user_management';

  const UserFormAnalyticsEvent();
}

final class PersonLinkModeSwitch extends UserFormAnalyticsEvent {
  final PersonLink target;

  @override
  String get objectAction => 'person_link_mode_switch';

  @override
  Json get properties => {
    'person_link_mode': switch (target) {
      CreateNewPerson() => 'create',
      LinkExistingPerson() || NoPersonSelected() => 'link',
    },
  };

  const PersonLinkModeSwitch(this.target);
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

sealed class AdminScopeEvent extends UserFormAnalyticsEvent {
  final Json scopeProperties;

  @override
  Json get properties => scopeProperties;

  AdminScopeEvent(UserAdminScope scope)
    : scopeProperties = AnalyticsEntityType.propertiesOf(scope.object);
}

final class ServiceScopeCopy extends AdminScopeEvent {
  @override
  String get objectAction => 'service_scope_copy';

  ServiceScopeCopy(super.scope);
}

final class AdminScopeDelete extends AdminScopeEvent {
  @override
  String get objectAction => 'scope_delete';

  AdminScopeDelete(super.scope);
}

final class AdminScopePermissionToggle extends AdminScopeEvent {
  final AdminScopePermission permission;
  final bool isEnabled;

  @override
  String get objectAction => 'scope_permission_toggle';

  @override
  Json get properties => {
    ...super.properties,
    'permission': permission.name,
    'is_enabled': isEnabled,
  };

  AdminScopePermissionToggle(
    super.scope,
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
  Json get properties => {
    'validity_days': validity.inDays,
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
