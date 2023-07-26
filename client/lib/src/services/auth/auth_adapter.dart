import 'package:church_admin/church_admin.dart';

abstract class AuthAdapter {
  Stream<User?> get userStream;
  Stream<String?> get idTokenStream;

  bool get hasPendingMultifactorSession;
  MultiFactorSession? get pendingMultifactorSession;

  Future<bool> signInWithEmailPassword({
    required String email,
    required String password,
    bool reauth = false,
  });

  Future<bool> signUpWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> sendEmailVerification();

  Future<void> reload();

  Future<MultiFactorSession> startMultiFactorSession({
    required String password,
  });

  MultiFactorInfo getMultiFactorInfoFor(MultiFactorSession session);

  Future<(String verificationId, int? resendToken)> initiateMultifactorLogin(
    MultiFactorSession session, {
    MultiFactorInfo? factor,
    String? phoneNumber,
    int? forceResendingToken,
  });

  Future<void> finishMultiFactorLogin(
    String verificationId,
    String smsCode,
    MultiFactorSession session,
  );

  Future<void> refreshToken();

  bool isTokenUpToDate(User user);

  DateTime tokenExpiry(String idToken);

  Future<void> signOut();

  Future<void> dispose();
}
