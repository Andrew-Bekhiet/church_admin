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

  bool get hasPendingMultifactorSession =>
      _adapter.hasPendingMultifactorSession;

  MultiFactorSession? get pendingMultifactorSession =>
      _adapter.pendingMultifactorSession;

  Future<MultiFactorSession> startMultiFactorSession({
    required String password,
  }) {
    if (!_authService.isSignedIn) throw StateError('Must be signed in');

    return _adapter.startMultiFactorSession(password: password);
  }

  MultiFactorInfo getMultiFactorInfoFor(MultiFactorSession session) =>
      _adapter.getMultiFactorInfoFor(session);

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

  Future<void> finishMultiFactorLogin(
    String verificationId,
    String smsCode,
    MultiFactorSession session,
  ) async {
    await _adapter.finishMultiFactorLogin(verificationId, smsCode, session);
    await _storage.saveUserPasswordHash(session.email, session.password);
  }
}
