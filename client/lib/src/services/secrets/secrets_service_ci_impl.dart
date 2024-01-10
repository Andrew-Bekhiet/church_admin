import 'package:church_admin/src/services/secrets/secrets_service.dart';

class SecretsServiceImpl extends SecretsService {
  SecretsServiceImpl() : super({'WEB_RECAPTCHA_SITE_KEY': ''}) {
    const ci = String.fromEnvironment('CI');
    if (ci != 'true') {
      throw Exception(
        'This SecretsServiceImpl should only be used in CI. value was: $ci',
      );
    }
  }
}
