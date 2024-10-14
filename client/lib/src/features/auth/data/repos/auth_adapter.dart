import 'package:church_admin/church_admin.dart';

abstract interface class AuthAdapter {
  static AuthAdapter get I => globalProviderContainer.read(authAdapterProvider);

  MultiFactorManagerAdapter get multiFactorManagerAdapter;

  Stream<User?> get userStream;
  Stream<String?> get idTokenStream;

  Future<bool> signInWithEmailPassword({
    required String email,
    required String password,
  });

  Future<bool> reauthWithEmailPassword({
    required String email,
    required String password,
  });

  Future<bool> signUpWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> sendEmailVerification();

  Future<void> reload();

  Future<void> refreshToken();

  bool isTokenUpToDate(User user);

  DateTime tokenExpiry(String idToken);

  Future<void> signOut();

  Future<void> dispose();
}
