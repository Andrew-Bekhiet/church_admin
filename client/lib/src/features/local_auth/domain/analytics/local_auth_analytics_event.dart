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

sealed class UnlockSubmit extends LocalAuthAnalyticsEvent {
  final UnlockOutcome outcome;
  final Duration lockedFor;

  @override
  Json get properties => {
    'outcome': outcome.name,
    'locked_duration_ms': lockedFor.inMilliseconds,
  };

  const UnlockSubmit({required this.outcome, required this.lockedFor});
}

final class BiometricsUnlockSubmit extends UnlockSubmit {
  final bool isAutoPrompted;

  @override
  String get objectAction => 'biometrics_unlock_submit';

  @override
  Json get properties => {
    ...super.properties,
    'is_auto_prompted': isAutoPrompted,
  };

  const BiometricsUnlockSubmit({
    required this.isAutoPrompted,
    required super.outcome,
    required super.lockedFor,
  });
}

final class PasswordUnlockSubmit extends UnlockSubmit {
  final bool canCheckBiometrics;

  @override
  String get objectAction => 'password_unlock_submit';

  @override
  Json get properties => {
    ...super.properties,
    'can_check_biometrics': canCheckBiometrics,
  };

  const PasswordUnlockSubmit({
    required this.canCheckBiometrics,
    required super.outcome,
    required super.lockedFor,
  });
}
