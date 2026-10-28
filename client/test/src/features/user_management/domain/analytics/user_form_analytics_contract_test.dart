import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('user form analytics contract', () {
    const area = Area(id: 'a1', name: 'منطقة');
    const service = Service(id: 's1', name: 'خدمة');
    const group = Group(id: 'g1', name: 'مجموعة');
    const scopesApply = AdminScopesApply(
      addedAreaCount: 1,
      removedAreaCount: 2,
      addedServiceCount: 3,
      removedServiceCount: 4,
      addedGroupCount: 5,
      removedGroupCount: 6,
    );
    const validity = Duration(days: 3);
    final areaScope = UserAdminScope(
      object: area,
      canManageUsers: false,
      canWriteData: true,
      canExportData: false,
    );
    final serviceScope = UserAdminScope(
      object: service,
      canManageUsers: false,
      canWriteData: true,
      canExportData: false,
    );
    final groupScope = UserAdminScope(
      object: group,
      canManageUsers: false,
      canWriteData: true,
      canExportData: false,
    );

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        const PersonLinkModeSwitch(CreateNewPerson(name: '', gender: true)),
        'user_management:person_link_mode_switch',
        {'person_link_mode': 'create'},
      ),
      (
        scopesApply,
        'user_management:scopes_apply',
        {
          'added_area_count': scopesApply.addedAreaCount,
          'removed_area_count': scopesApply.removedAreaCount,
          'added_service_count': scopesApply.addedServiceCount,
          'removed_service_count': scopesApply.removedServiceCount,
          'added_group_count': scopesApply.addedGroupCount,
          'removed_group_count': scopesApply.removedGroupCount,
        },
      ),
      (
        ServiceScopeCopy(serviceScope),
        'user_management:service_scope_copy',
        {'entity_type': 'service', 'service_id': service.id},
      ),
      (
        AdminScopeDelete(areaScope),
        'user_management:scope_delete',
        {'entity_type': 'area', 'area_id': area.id},
      ),
      (
        AdminScopePermissionToggle(
          groupScope,
          AdminScopePermission.recordServantsAttendance,
          isEnabled: true,
        ),
        'user_management:scope_permission_toggle',
        {
          'entity_type': 'group',
          'group_id': group.id,
          'permission': 'recordServantsAttendance',
          'is_enabled': true,
        },
      ),
      (
        const InvitationToggle(isEnabled: false),
        'user_management:invitation_toggle',
        {'is_enabled': false},
      ),
      (
        const InvitationExpiryChange(validity),
        'user_management:invitation_expiry_change',
        {'validity_days': validity.inDays},
      ),
      (
        const InvitationCodeShare(),
        'user_management:invitation_code_share',
        {},
      ),
      (
        const InvitationCodeCopy(),
        'user_management:invitation_code_copy',
        {},
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
