import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/adapters.dart';

class EncryptionServiceCIImpl extends EncryptionService {
  static final EncryptionServiceCIImpl _instance = EncryptionServiceCIImpl._();

  factory EncryptionServiceCIImpl() => _instance;

  EncryptionServiceCIImpl._();

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
