import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('user form analytics contract', () {
    const scopesApply = AdminScopesApply(
      addedAreaCount: 1,
      removedAreaCount: 2,
      addedServiceCount: 3,
      removedServiceCount: 4,
      addedGroupCount: 5,
      removedGroupCount: 6,
    );
    final validFrom = DateTime(2026, 10, 1, 18, 30);
    final expiresAt = DateTime(2026, 10, 4, 9);
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
        const InvitationToggle(isEnabled: false),
        'user_management:invitation_toggle',
        {'is_enabled': false},
      ),
      (
        InvitationExpiryChange(validFrom: validFrom, expiresAt: expiresAt),
        'user_management:invitation_expiry_change',
        {'validity_days': validFrom.calendarDaysUntil(expiresAt)},
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
