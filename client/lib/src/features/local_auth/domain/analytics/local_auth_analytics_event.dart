part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

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
    'locked_duration_ms': lockedFor.inMilliseconds,
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
    'locked_duration_ms': lockedFor.inMilliseconds,
  };

  const PasswordUnlockSubmit({
    required this.outcome,
    required this.canCheckBiometrics,
    required this.lockedFor,
  });
}
