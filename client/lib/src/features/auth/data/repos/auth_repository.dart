import 'package:church_admin/church_admin.dart';

abstract interface class AuthRepository {
  bool get isSignedIn;

  String? get currentUserEmail;

  Stream<AuthUser?> get userChanges;

  Future<void> signInWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> signUpWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> reauthWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> sendEmailVerification();

  Future<void> sendPasswordResetEmail({required String email});

  Future<void> reload();

  Future<void> refreshToken();

  /// The signed-in user's ID token, refreshed when it has expired or when
  /// [forceRefresh] asks for it; null when nobody is signed in.
  Future<String?> idToken({bool forceRefresh = false});

  Future<void> signOut();

  Future<void> dispose();
}
