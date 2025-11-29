import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Secrets Service',
    () {
      const mapEquality = MapEquality();
      final env = {
        'HASURA_SERVER': 'Secret=>hasuraServer',
        'SENTRY_DSN': 'Secret=>sentryDsn',
        'WEB_RECAPTCHA_SITE_KEY': 'Secret=>webRecaptchaSiteKey',
        'WEB_AUTH_HANDLER': 'Secret=>webAuthHandler',
        'DESKTOP_CLIENT_ID': 'Secret=>desktopClientId',
      };
      final unit = FakeSecretsServiceImpl(env);

      expect(mapEquality.hash(unit), mapEquality.hash(env));

      expect(unit.hasuraServer, env['HASURA_SERVER']);
      expect(unit.sentryDSN, env['SENTRY_DSN']);
      expect(unit.webRecaptchaSiteKey, env['WEB_RECAPTCHA_SITE_KEY']);

      expect(() => unit['any'] = 'value', throwsUnsupportedError);
      expect(() => unit['HASURA_SERVER'] = 'value', throwsUnsupportedError);
    },
  );
}

class FakeSecretsServiceImpl extends SecretsService {
  // Ignored for readability
  // ignore: matching_super_parameters
  FakeSecretsServiceImpl(super.secrets);
}
