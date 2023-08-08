// suggest good class name for this class that will be a part of AuthService
import 'package:church_admin/church_admin.dart';

class MultiFactorManager {
  final MultiFactorManagerAdapter _adapter;
  final AuthService _authService;
  final AuthStorage _storage;

  MultiFactorManager({
    required MultiFactorManagerAdapter adapter,
    required AuthService authService,
    required AuthStorage storage,
  })  : _adapter = adapter,
        _authService = authService,
        _storage = storage;

  bool get hasPendingMultifactorLogin => _adapter.hasPendingMultifactorLogin;

  MultiFactorSession? get pendingMultifactorLogin =>
      _adapter.pendingMultifactorLogin;

  Future<MultiFactorSession> enrollNewMultiFactor({
    required String password,
  }) {
    if (!_authService.isSignedIn) throw StateError('Must be signed in');

    return _adapter.enrollNewMultiFactor(password: password);
  }

  MultiFactorInfo getMultiFactorInfoForPendingSession() =>
      _adapter.getMultiFactorInfoForPendingSession();

  Future<(String verificationId, int? resendToken)> initiateMultifactorLogin(
    MultiFactorSession session, {
    MultiFactorInfo? factor,
    String? phoneNumber,
    int? forceResendingToken,
  }) {
    if ((factor == null) == (phoneNumber == null)) {
      throw Exception('One of "factor" or "phoneNumber" must be provided');
    }

    return _adapter.initiateMultifactorLogin(
      session,
      factor: factor,
      phoneNumber: phoneNumber,
      forceResendingToken: forceResendingToken,
    );
  }

  Future<void> finishMultiFactorSession(
    String verificationId,
    String smsCode,
    MultiFactorSession session,
  ) async {
    await _adapter.finishMultiFactorSession(verificationId, smsCode);
    await _storage.saveUserPasswordHash(session.email, session.password);
  }
}
