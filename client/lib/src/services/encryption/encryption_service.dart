// coverage:ignore-file

import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/adapters.dart';

abstract interface class EncryptionService {
  static EncryptionService get I =>
      globalProviderContainer.read(encryptionServiceProvider);

  Future<String> encryptPassword(String password);

  Future<HiveCipher> getHiveCipher({String? boxName});
}
