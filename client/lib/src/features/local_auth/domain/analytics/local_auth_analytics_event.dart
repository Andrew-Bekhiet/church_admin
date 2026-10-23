import 'package:church_admin/church_admin.dart';

sealed class LocalAuthAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'local_auth';

  const LocalAuthAnalyticsEvent();
}

final class LocalAuthLockShow extends LocalAuthAnalyticsEvent {
  final bool canCheckBiometrics;
  final bool isProtectingRoute;

  @override
  String get objectAction => 'lock_show';

  @override
  Json get properties => {
    'can_check_biometrics': canCheckBiometrics,
    'is_protecting_route': isProtectingRoute,
  };

  const LocalAuthLockShow({
    required this.canCheckBiometrics,
    required this.isProtectingRoute,
  });
}

final class BiometricsUnlockSubmit extends LocalAuthAnalyticsEvent {
  final UnlockOutcome outcome;
  final bool isAutoPrompted;
  final Duration lockedFor;

  @override
  String get objectAction => 'biometrics_unlock_submit';

  @override
  Json get properties => {
    'outcome': outcome.name,
    'is_auto_prompted': isAutoPrompted,
    'seconds_locked': lockedFor.inSeconds,
  };

  const BiometricsUnlockSubmit({
    required this.outcome,
    required this.isAutoPrompted,
    required this.lockedFor,
  });
}

final class PasswordUnlockSubmit extends LocalAuthAnalyticsEvent {
  final UnlockOutcome outcome;
  final bool canCheckBiometrics;
  final Duration lockedFor;

  @override
  String get objectAction => 'password_unlock_submit';

  @override
  Json get properties => {
    'outcome': outcome.name,
    'can_check_biometrics': canCheckBiometrics,
    'seconds_locked': lockedFor.inSeconds,
  };

  const PasswordUnlockSubmit({
    required this.outcome,
    required this.canCheckBiometrics,
    required this.lockedFor,
  });
}

enum UnlockOutcome { unlocked, notAuthenticated, wrongPassword, failed }
