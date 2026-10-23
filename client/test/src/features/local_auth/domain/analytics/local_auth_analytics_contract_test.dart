import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('local auth analytics contract', () {
    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        LocalAuthLockShow(canCheckBiometrics: true, isProtectingRoute: false),
        'local_auth:lock_show',
        {'can_check_biometrics': true, 'is_protecting_route': false},
      ),
      (
        BiometricsUnlockSubmit(
          outcome: UnlockOutcome.notAuthenticated,
          isAutoPrompted: true,
          lockedFor: Duration(minutes: 2),
        ),
        'local_auth:biometrics_unlock_submit',
        {
          'outcome': 'notAuthenticated',
          'is_auto_prompted': true,
          'locked_duration_ms': 120000,
        },
      ),
      (
        PasswordUnlockSubmit(
          outcome: UnlockOutcome.wrongPassword,
          canCheckBiometrics: false,
          lockedFor: Duration(seconds: 30),
        ),
        'local_auth:password_unlock_submit',
        {
          'outcome': 'wrongPassword',
          'can_check_biometrics': false,
          'locked_duration_ms': 30000,
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
