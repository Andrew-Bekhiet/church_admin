import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';

abstract class SecretsService extends DelegatingMap with UnmodifiableMapMixin {
  static SecretsService get I => GetIt.I<SecretsService>();

  const SecretsService(super.base);

  String get hasuraServer => this['HASURA_SERVER'];
  String get sentryDSN => this['SENTRY_DSN'];

  String? get webRecaptchaSiteKey => this['WEB_RECAPTCHA_SITE_KEY'];
  String get webAuthHandler => this['WEB_AUTH_HANDLER'];
  String get desktopClientId => this['DESKTOP_CLIENT_ID'];
}
