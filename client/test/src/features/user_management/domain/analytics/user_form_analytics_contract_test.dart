import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('user form analytics contract', () {
    final areaScope = UserAdminScope(
      object: const Area(id: 'a1', name: 'منطقة'),
      canManageUsers: false,
      canWriteData: true,
      canExportData: false,
    );
    final serviceScope = UserAdminScope(
      object: const Service(id: 's1', name: 'خدمة'),
      canManageUsers: false,
      canWriteData: true,
      canExportData: false,
    );
    final groupScope = UserAdminScope(
      object: const Group(id: 'g1', name: 'مجموعة'),
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
        const AdminScopesApply(
          addedAreaCount: 1,
          removedAreaCount: 2,
          addedServiceCount: 3,
          removedServiceCount: 4,
          addedGroupCount: 5,
          removedGroupCount: 6,
        ),
        'user_management:scopes_apply',
        {
          'added_area_count': 1,
          'removed_area_count': 2,
          'added_service_count': 3,
          'removed_service_count': 4,
          'added_group_count': 5,
          'removed_group_count': 6,
        },
      ),
      (
        ServiceScopeCopy(serviceScope),
        'user_management:service_scope_copy',
        {'entity_type': 'service', 'service_id': 's1'},
      ),
      (
        AdminScopeDelete(areaScope),
        'user_management:scope_delete',
        {'entity_type': 'area', 'area_id': 'a1'},
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
          'group_id': 'g1',
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
        const InvitationExpiryChange(Duration(days: 3)),
        'user_management:invitation_expiry_change',
        {'validity_duration_ms': 259200000},
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
