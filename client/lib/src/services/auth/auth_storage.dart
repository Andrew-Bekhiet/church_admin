import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthStorage {
  AuthStorage({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;

  Future<User?> getUserFromCache() async {
    final userJson = await _secureStorage.read(key: 'User');

    return userJson != null ? User.fromJson(jsonDecode(userJson)) : null;
  }

  Future<void> writeUserToCache(User? user) async {
    await _secureStorage.write(
      key: 'User',
      value: user != null ? jsonEncode(user.toJson()) : null,
    );
  }

  Future<String?> getPasswordHash() {
    return _secureStorage.read(key: 'passwordHash');
  }

  Future<void> saveUserPasswordHash(String email, String password) async {
    if (await _secureStorage.containsKey(key: 'passwordHash')) return;

    final derivedKey =
        await EncryptionService.I.deriveKey(password: password, salt: email);

    final hashedPassword = await EncryptionService.I.hashPassword(
      password: password,
      keyBytes: derivedKey,
    );

    return _secureStorage.write(key: 'passwordHash', value: hashedPassword);
  }

  Future<void> clearPasswordHash() {
    return _secureStorage.delete(key: 'passwordHash');
  }
}
