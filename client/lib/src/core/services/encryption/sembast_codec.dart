import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography_plus/cryptography_plus.dart';
import 'package:sembast/sembast.dart';

class ChurchAdminSembastCodec extends AsyncContentCodecBase {
  final SecretKey _key;
  final Cipher _cipher;

  ChurchAdminSembastCodec({required Uint8List key})
      : _key = SecretKey(key),
        _cipher = Chacha20.poly1305Aead();

  @override
  Future<String> encodeAsync(Object? object) async {
    if (object == null) {
      return '';
    }

    final dataBytes = utf8.encode(json.encode(object));

    final secretBox = await _cipher.encrypt(
      dataBytes,
      secretKey: _key,
      nonce: _cipher.newNonce(),
    );

    return base64Url.encode(secretBox.concatenation());
  }

  @override
  Future<Object?> decodeAsync(String encoded) async {
    if (encoded.isEmpty) {
      return null;
    }

    final encryptedData = base64Url.decode(encoded);

    final secretBox = SecretBox.fromConcatenation(
      encryptedData,
      nonceLength: _cipher.nonceLength,
      macLength: _cipher.macAlgorithm.macLength,
    );

    final decryptedData = await _cipher.decrypt(
      secretBox,
      secretKey: _key,
    );

    return json.decode(utf8.decode(decryptedData));
  }
}
