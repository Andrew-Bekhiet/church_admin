import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pointycastle/export.dart';

class EncryptionServiceCIImpl implements EncryptionService {
  static final EncryptionServiceCIImpl _instance = EncryptionServiceCIImpl._();

  factory EncryptionServiceCIImpl() => _instance;

  EncryptionServiceCIImpl._();

  @override
  Future<String> encryptPassword(String password) async {
    //SHA-3/256 (password)
    return base64.encode(
      SHA3Digest(256).process(
        Uint8List.fromList(utf8.encode(password)),
      ),
    );
  }

  @override
  Future<HiveCipher> getHiveCipher({String? boxName}) async {
    return HiveAesCipher(
      base64Url.decode(await encryptPassword(boxName ?? 'default')),
    );
  }
}
