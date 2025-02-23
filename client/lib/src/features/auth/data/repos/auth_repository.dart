import 'package:church_admin/church_admin.dart';

abstract interface class AuthRepository {
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

  Future<void> signOut();

  Future<MultiFactorSession> startMultiFactorEnrollment({
    required String password,
    required String phoneNumber,
  });

  Future<MultiFactorChallenge> startMultiFactorChallenge({
    required MultiFactorSession session,
    MultiFactorInfo? selectedFactor,
    String? phoneNumber,
    int? resendToken,
  });

  Future<void> completeMultiFactorChallenge({
    required MultiFactorChallenge challenge,
    required String verificationCode,
    MultiFactorInfo? selectedFactor,
  });

  Future<void> dispose();
}
