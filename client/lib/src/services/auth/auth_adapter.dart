import 'package:church_admin/church_admin.dart';

abstract class AuthAdapter {
  Stream<User?> get userStream;
  Stream<String?> get idTokenStream;

  Future<User?> signInWithGoogle();

  Future<void> refreshToken();

  bool isTokenUpToDate(User user);

  Future<void> signOut();

  Future<void> dispose();
}
