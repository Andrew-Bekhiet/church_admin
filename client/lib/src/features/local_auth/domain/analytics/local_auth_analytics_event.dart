part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class LocalAuthAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'local_auth';

  const LocalAuthAnalyticsEvent();
}

sealed class UnlockSubmit extends LocalAuthAnalyticsEvent {
  final UnlockOutcome outcome;

  @override
  Json get properties => {'outcome': outcome.name};

  const UnlockSubmit({required this.outcome});
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
  });
}
