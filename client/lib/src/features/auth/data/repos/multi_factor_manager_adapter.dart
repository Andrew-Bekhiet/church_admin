import 'package:church_admin/church_admin.dart';

abstract interface class MultiFactorManagerAdapter {
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
