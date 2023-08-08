import 'package:church_admin/church_admin.dart';

abstract class AuthAdapter {
  static AuthAdapter get I => globalProviderContainer.read(authAdapterProvider);

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

abstract class MultiFactorManagerAdapter {
  bool get hasPendingMultifactorLogin;
  MultiFactorSession? get pendingMultifactorLogin;

  Future<MultiFactorSession> enrollNewMultiFactor({
    required String password,
  });

  MultiFactorInfo getMultiFactorInfoForPendingSession();

  Future<(String verificationId, int? resendToken)> initiateMultifactorLogin(
    MultiFactorSession session, {
    MultiFactorInfo? factor,
    String? phoneNumber,
    int? forceResendingToken,
  });

  Future<void> finishMultiFactorSession(String verificationId, String smsCode);

  void clearPendingMultiFactorLogin();
}
