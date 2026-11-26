import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ThisDevicePushRegistration {
  static const Duration timeLimitPerCall = Duration(seconds: 5);

  final FirebaseMessaging _firebaseMessaging;
  final FunctionsService _functionsService;

  Future<void> _latestQueuedStep = Future<void>.value();
  StreamSubscription<String>? _installationIdsSubscription;
  int _stopsAndDisposals = 0;

  ThisDevicePushRegistration({
    required this._firebaseMessaging,
    required this._functionsService,
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

  Future<void> _submit(String installationId) =>
      _waitWithinTimeLimitLoggingFailure(
        _functionsService.registerFirebaseInstallation(installationId),
      );

  void _logInstallationRegistrationError(Object error, StackTrace stackTrace) {
    unawaited(
      Future<void>.error(error, stackTrace).logWarningInsteadOfThrowing(),
    );
  }

  Future<void> stop() {
    _stopsAndDisposals++;
    unawaited(_stopListeningForInstallationIds());

    return _runAfterQueuedSteps(_unregister);
  }

  Future<void> _unregister() =>
      _waitWithinTimeLimitLoggingFailure(_firebaseMessaging.unregister());

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
