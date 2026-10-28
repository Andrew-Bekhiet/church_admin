import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('local auth analytics contract', () {
    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        const LocalAuthLockShow(
          canCheckBiometrics: true,
          isProtectingRoute: false,
        ),
        'local_auth:lock_show',
        {'can_check_biometrics': true, 'is_protecting_route': false},
      ),
      (
        const BiometricsUnlockSubmit(
          outcome: UnlockOutcome.notAuthenticated,
          isAutoPrompted: true,
        ),
        'local_auth:biometrics_unlock_submit',
        {
          'outcome': 'notAuthenticated',
          'is_auto_prompted': true,
        },
      ),
      (
        const PasswordUnlockSubmit(
          outcome: UnlockOutcome.wrongPassword,
          canCheckBiometrics: false,
        ),
        'local_auth:password_unlock_submit',
        {
          'outcome': 'wrongPassword',
          'can_check_biometrics': false,
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      test('$expectedName sends ${expectedProperties.keys.join(', ')}', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
