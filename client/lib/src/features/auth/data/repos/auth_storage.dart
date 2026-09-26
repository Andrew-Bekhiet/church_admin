import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

interface class AuthStorage {
  static AuthStorage get I => globalProviderContainer.read(authStorageProvider);

  static const String authUserKey = 'authUser';
  static const String userKey = 'user';
  static const String passwordHashKey = 'passwordHash';

  final FlutterSecureStorage _secureStorage;

  Future<void> _pendingSessionWrite = Future.value();

  AuthStorage({
    required this._secureStorage,
    required UserDataWiper userDataWiper,
  }) {
    userDataWiper.register(clearAll);
  }

  Future<AuthUser?> getAuthDataFromCache() async {
    final authDataJson = await _secureStorage.read(key: authUserKey);

    return authDataJson != null
        ? AuthUser.fromJson(jsonDecode(authDataJson))
        : null;
  }

  Future<void> writeAuthDataToCache(AuthUser? authData) async {
    await _secureStorage.write(
      key: authUserKey,
      value: authData != null ? jsonEncode(authData.toJson()) : null,
    );
  }

  Future<void> writeSessionToCache(AuthUser authUser, User? user) {
    final write = _pendingSessionWrite.then<void>((_) async {
      await writeAuthDataToCache(authUser);
      await writeUserToCache(user);
    });

    _pendingSessionWrite = write.catchError(
      (Object error, StackTrace stackTrace) => LoggingService.I.exception(
        LogRecord(error: error, stackTrace: stackTrace),
      ),
    );

    return write;
  }

  Future<User?> getUserFromCache() async {
    final userJson = await _secureStorage.read(key: userKey);

    return userJson != null ? User.fromJson(jsonDecode(userJson)) : null;
  }

  Future<void> writeUserToCache(User? user) async {
    await _secureStorage.write(
      key: userKey,
      value: user != null ? jsonEncode(user.toJson()) : null,
    );
  }

  Future<String?> getPasswordHash() {
    return _secureStorage.read(key: passwordHashKey);
  }

  Future<void> saveUserPasswordHash(String email, String password) async {
    if (await _secureStorage.containsKey(key: passwordHashKey)) return;

    final derivedKey = await EncryptionService.I.deriveKey(
      password: password,
      salt: email.toLowerCase(),
    );

    final hashedPassword = await EncryptionService.I.hashPassword(
      password: password,
      keyBytes: derivedKey,
    );

    return _secureStorage.write(key: passwordHashKey, value: hashedPassword);
  }

  Future<void> clearPasswordHash() {
    return _secureStorage.delete(key: passwordHashKey);
  }

  Future<void> clearAll() async {
    await _secureStorage.delete(key: authUserKey);
    await _secureStorage.delete(key: userKey);
    await _secureStorage.delete(key: passwordHashKey);
  }
}
