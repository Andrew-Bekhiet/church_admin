import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/adapters.dart';

class EncryptionServiceImpl extends EncryptionService {
  static final EncryptionServiceImpl _instance = EncryptionServiceImpl._();

  factory EncryptionServiceImpl() => _instance;

  EncryptionServiceImpl._() {
    if (const String.fromEnvironment('CI') != 'true') {
      throw Exception('This EncryptionServiceImpl should only be used in CI');
    }
  }

  Uint8List? _cachedKeyBytes;

  @override
  Future<HiveCipher> getHiveCipher({String? boxName}) async {
    _cachedKeyBytes ??= await deriveKey(password: 'password', salt: 'salt');

    return HiveAesCipher(
      base64Url.decode(
        await hashPassword(
          password: boxName ?? 'default',
          keyBytes: _cachedKeyBytes!,
        ),
      ),
    );
  }
}
