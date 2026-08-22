// coverage:ignore-file

import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:cryptography_flutter_plus/cryptography_flutter_plus.dart';
import 'package:cryptography_plus/cryptography_plus.dart' hide SecureRandom;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:pointycastle/export.dart';
import 'package:sembast/sembast.dart';
import 'package:universal_platform/universal_platform.dart';

class EncryptionService {
  static EncryptionService get I =>
      globalProviderContainer.read(encryptionServiceProvider);

  Future<String> hashPassword({
    required String password,
    required Uint8List keyBytes,
  }) async {
    // using cryptography_flutter because it's faster than pointycastle

    final backgroundPbkdf2 = BackgroundPbkdf2(
      macAlgorithm: Hmac(Sha256()),
      bits: 256 * 8,
      iterations: 2,
    );

    final derivedKey = await backgroundPbkdf2.deriveKey(
      secretKey: SecretKey(keyBytes),
      nonce: utf8.encode(password),
    );
    final extractedKeyData = await derivedKey.extract();

    final passwordHash = base64Url.encode(extractedKeyData.bytes);

    extractedKeyData.destroy();
    derivedKey.destroy();

    return passwordHash;
  }

  Future<Uint8List> deriveKey({
    required String password,
    required String salt,
  }) async {
    final saltHash = SHA3Digest(
      256,
    ).process(Uint8List.fromList(utf8.encode(salt)));

    final argon2Parameters = Argon2Parameters(
      Argon2Parameters.ARGON2_id,
      saltHash,
      desiredKeyLength: 32,
      iterations: 4,
      lanes: 4,
      memory: 128,
      additional: await additionalDeviceInfo(),
    );

    final argon2BytesGenerator = Argon2BytesGenerator()..init(argon2Parameters);

    return argon2BytesGenerator.process(
      Uint8List.fromList(utf8.encode(password)),
    );
  }

  Future<bool> verifyPassword({
    required String passwordToVerify,
    required Uint8List keyBytes,
    required String? storedPasswordHash,
  }) async {
    if (storedPasswordHash != null) {
      final passwordHashToVerify = await hashPassword(
        password: passwordToVerify,
        keyBytes: keyBytes,
      );

      return _constantTimeEquals(storedPasswordHash, passwordHashToVerify);
    }

    return false;
  }

  bool _constantTimeEquals(String a, String b) {
    if (a.length != b.length) return false;

    int result = 0;
    for (int i = 0; i < a.length; i++) {
      result |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }

    return result == 0;
  }

  @protected
  Future<Uint8List> additionalDeviceInfo({
    bool usePotentialyVolatitleInfo = false,
  }) async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final computedInfo = <int>[];

    if (kIsWeb) {
      final webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;

      return utf8.encode(
        (usePotentialyVolatitleInfo
                ? '${webBrowserInfo.appVersion}-${webBrowserInfo.browserName}-'
                : '') +
            '${webBrowserInfo.hardwareConcurrency}-${webBrowserInfo.vendor}'
                .padRight(32, '#'),
      );
    }

    if (UniversalPlatform.isAndroid) {
      final androidDeviceInfo = await deviceInfoPlugin.androidInfo;

      computedInfo.addAll(
        utf8.encode(
          // Ignored fore readability
          // ignore: prefer_interpolation_to_compose_strings
          '${androidDeviceInfo.fingerprint}${androidDeviceInfo.board}${androidDeviceInfo.device}' +
              (usePotentialyVolatitleInfo
                  ? '${androidDeviceInfo.model}${androidDeviceInfo.brand}${androidDeviceInfo.bootloader}'
                  : ''),
        ),
      );
    } else if (UniversalPlatform.isIOS) {
      final iosDeviceInfo = await deviceInfoPlugin.iosInfo;

      computedInfo.addAll(
        utf8.encode(
          iosDeviceInfo.model + (iosDeviceInfo.identifierForVendor ?? ''),
        ),
      );
    } else if (UniversalPlatform.isLinux) {
      final linuxDeviceInfo = await deviceInfoPlugin.linuxInfo;

      computedInfo.addAll(
        utf8.encode((linuxDeviceInfo.machineId ?? '') + linuxDeviceInfo.id),
      );
    } else if (UniversalPlatform.isMacOS) {
      final macDeviceInfo = await deviceInfoPlugin.macOsInfo;

      computedInfo.addAll(
        utf8.encode(
          macDeviceInfo.arch +
              macDeviceInfo.model +
              (macDeviceInfo.systemGUID ?? ''),
        ),
      );
    } else if (UniversalPlatform.isWindows) {
      final windowsDeviceInfo = await deviceInfoPlugin.windowsInfo;

      computedInfo.addAll(
        utf8.encode(windowsDeviceInfo.numberOfCores.toString()),
      );
    }

    return Uint8List.fromList(computedInfo);
  }

  Future<SembastCodec> getSembastCodec(String dbName) async {
    final keyName = '$dbName.key';

    final secureStorage = globalProviderContainer.read(secureStorageProvider);

    final String key;

    if (await secureStorage.containsKey(key: keyName)) {
      key = (await secureStorage.read(key: keyName))!;
    } else {
      final deviceInfo = await additionalDeviceInfo(
        usePotentialyVolatitleInfo: true,
      );

      key = base64Url.encode(
        (FortunaRandom()..seed(KeyParameter(deviceInfo.sublist(0, 32))))
            .nextBytes(32),
      );

      await secureStorage.write(key: keyName, value: key);
    }

    return SembastCodec(
      codec: ChurchAdminSembastCodec(
        key: Uint8List.fromList(
          base64Url.decode(key).sublist(0, 32),
        ),
      ),
      signature: keyName,
    );
  }
}
