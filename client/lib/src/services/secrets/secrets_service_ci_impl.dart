import 'package:church_admin/src/services/secrets/secrets_service.dart';

class SecretsServiceImpl extends SecretsService {
  SecretsServiceImpl() : super({}) {
    if (const String.fromEnvironment('CI') != 'true') {
      throw Exception('This SecretsServiceImpl should only be used in CI');
    }
  }
}
