// coverage:ignore-file

import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

abstract class EncryptionService {
  static EncryptionService get I => GetIt.I<EncryptionService>();

  Future<void> init();

  Future<String> encryptPassword(String password);

  Future<HiveCipher> getHiveCipher({String? boxName});
}
