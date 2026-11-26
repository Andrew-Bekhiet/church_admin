import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ThisDevicePushRegistration {
  static const Duration timeLimitPerCall = Duration(seconds: 5);

  final FirebaseMessaging _firebaseMessaging;
  final FunctionsService _functionsService;
  final FcmTokensDAO _fcmTokens;
  final String? Function() _readCurrentUid;

  Future<void> _latestQueuedStep = Future<void>.value();
  StreamSubscription<String>? _installationIdsSubscription;
  String? _lastSubmittedInstallationId;
  int _stopsAndDisposals = 0;

  ThisDevicePushRegistration({
    required this._firebaseMessaging,
    required this._functionsService,
    required this._fcmTokens,
    required this._readCurrentUid,
  });

  Future<void> maybeRegisterOnceGranted(Future<bool> permissionGranted) async {
    final stopsAndDisposalsAtStart = _stopsAndDisposals;

    if (!await permissionGranted || !await _firebaseMessaging.isSupported()) {
      return;
    }

    await _runAfterQueuedSteps(
      () => _maybeListenAndRegister(stopsAndDisposalsAtStart),
    );
  }

  Future<void> _maybeListenAndRegister(int stopsAndDisposalsAtStart) async {
    final stoppedOrDisposedSinceStart =
        stopsAndDisposalsAtStart != _stopsAndDisposals;
    if (stoppedOrDisposedSinceStart) return;

    _installationIdsSubscription ??= _firebaseMessaging.onRegistered.listen(
      _queueSubmittingInstallationId,
      onError: _logInstallationRegistrationError,
    );
    await _waitWithinTimeLimitLoggingFailure(_firebaseMessaging.register());
  }

  void _queueSubmittingInstallationId(String installationId) {
    unawaited(_runAfterQueuedSteps(() => _submit(installationId)));
  }

  Future<void> _submit(String installationId) {
    _lastSubmittedInstallationId = installationId;

    return _waitWithinTimeLimitLoggingFailure(
      _functionsService.registerFirebaseInstallation(installationId),
    );
  }

  Future<void> _logInstallationRegistrationError(
    Object error,
    StackTrace stackTrace,
  ) =>
      LoggingService.I.warning(LogRecord(error: error, stackTrace: stackTrace));

  Future<void> stop() {
    _stopsAndDisposals++;
    final uid = _readCurrentUid();
    final listeningStopped = _stopListeningForInstallationIds();

    return _runAfterQueuedSteps(() async {
      await listeningStopped;
      await _maybeDeleteSubmittedRow(uid);
      await _waitWithinTimeLimitLoggingFailure(_firebaseMessaging.unregister());
    });
  }

  Future<void> _maybeDeleteSubmittedRow(String? uid) async {
    final installationId = _lastSubmittedInstallationId;
    _lastSubmittedInstallationId = null;
    if (installationId == null || uid == null) return;

    await _waitWithinTimeLimitLoggingFailure(
      _fcmTokens.deleteByUidAndToken(uid: uid, token: installationId),
    );
  }

  Future<void> _stopListeningForInstallationIds() {
    final cancellation =
        _installationIdsSubscription?.cancel() ?? Future<void>.value();
    _installationIdsSubscription = null;

    return cancellation.logWarningInsteadOfThrowing();
  }

  Future<void> _runAfterQueuedSteps(Future<void> Function() step) {
    final queuedStep = _latestQueuedStep
        .then((_) => step())
        .logWarningInsteadOfThrowing();
    _latestQueuedStep = queuedStep;

    return queuedStep;
  }

  Future<void> _waitWithinTimeLimitLoggingFailure(Future<void> call) =>
      call.timeout(timeLimitPerCall).logWarningInsteadOfThrowing();

  void dispose() {
    _stopsAndDisposals++;
    unawaited(_stopListeningForInstallationIds());
  }
}
