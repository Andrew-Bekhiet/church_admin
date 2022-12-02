import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class AuthCache {
  AuthCache({
    FlutterSecureStorage? secureStorage,
  }) : _secureStorage = secureStorage ?? GetIt.I<FlutterSecureStorage>();

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
}
