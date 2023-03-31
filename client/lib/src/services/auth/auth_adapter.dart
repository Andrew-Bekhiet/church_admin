import 'package:church_admin/church_admin.dart';

abstract class AuthAdapter {
  Stream<User?> get userStream;
  Stream<String?> get idTokenStream;

  Future<bool> signInWithGoogle();

  Future<void> refreshToken();

  bool isTokenUpToDate(User user);

  DateTime tokenExpiry(String idToken);

  Future<void> signOut();

  Future<void> dispose();
}
