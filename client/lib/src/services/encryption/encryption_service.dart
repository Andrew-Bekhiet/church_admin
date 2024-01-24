// coverage:ignore-file
// ignore_for_file: prefer_adjacent_string_concatenation

import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:cryptography/cryptography.dart';
import 'package:cryptography_flutter/cryptography_flutter.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pointycastle/export.dart';
import 'package:universal_platform/universal_platform.dart';

abstract class EncryptionService {
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
    final saltHash =
        SHA3Digest(256).process(Uint8List.fromList(utf8.encode(salt)));

    final argon2Parameters = Argon2Parameters(
      Argon2Parameters.ARGON2_id,
      saltHash,
      desiredKeyLength: 32,
      lanes: 4,
      memory: 64,
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
      final passwordHashToVerify =
          await hashPassword(password: passwordToVerify, keyBytes: keyBytes);

      return storedPasswordHash == passwordHashToVerify;
    }

    return false;
  }

  @protected
  Future<Uint8List> additionalDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final computedInfo = <int>[];

    if (kIsWeb) {
      final webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;

      return utf8.encode(
        '${webBrowserInfo.hardwareConcurrency}-${webBrowserInfo.vendor}'
            .padRight(16, '#'),
      );
    }

    if (UniversalPlatform.isAndroid) {
      final androidDeviceInfo = await deviceInfoPlugin.androidInfo;

      computedInfo.addAll(
        utf8.encode(
          (androidDeviceInfo.fingerprint) +
              (androidDeviceInfo.board) +
              (androidDeviceInfo.device),
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
        utf8.encode(
          (linuxDeviceInfo.machineId ?? '') + linuxDeviceInfo.id,
        ),
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
      final macDeviceInfo = await deviceInfoPlugin.windowsInfo;

      computedInfo.addAll(
        utf8.encode(
          macDeviceInfo.numberOfCores.toString(),
        ),
      );
    }

    return Uint8List.fromList(computedInfo);
  }

  Future<HiveCipher> getHiveCipher({String? boxName});
}
