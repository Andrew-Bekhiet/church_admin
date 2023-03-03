import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

abstract class SecretsService extends DelegatingMap with UnmodifiableMapMixin {
  static SecretsService get I =>
      globalProviderContainer.read(secretsServiceProvider);

  const SecretsService(super.base);

  String get hasuraServer => this['HASURA_SERVER'];
  String get sentryDSN => this['SENTRY_DSN'];

  String? get webRecaptchaSiteKey => this['WEB_RECAPTCHA_SITE_KEY'];
  String get webAuthHandler => this['WEB_AUTH_HANDLER'];
  String get desktopClientId => this['DESKTOP_CLIENT_ID'];
}
