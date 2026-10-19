import 'package:church_admin/church_admin.dart';

class SecretsService {
  static SecretsService get I =>
      globalProviderContainer.read(secretsServiceProvider);

  @pragma('vm:prefer-inline')
  String get apiServerUrl => const String.fromEnvironment('API_SERVER_URL');
  @pragma('vm:prefer-inline')
  String get sentryDSN => const String.fromEnvironment('SENTRY_DSN');
  @pragma('vm:prefer-inline')
  String get postHogToken => const String.fromEnvironment('POSTHOG_TOKEN');
  @pragma('vm:prefer-inline')
  String get postHogHost => const String.fromEnvironment('POSTHOG_HOST');

  @pragma('vm:prefer-inline')
  String get webRecaptchaSiteKey =>
      const String.fromEnvironment('WEB_RECAPTCHA_SITE_KEY');

  const SecretsService();
}
