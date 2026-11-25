import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ThisDevicePushRegistration {
  static const Duration stopTimeLimit = Duration(seconds: 5);

  final FirebaseMessaging _firebaseMessaging;
  final FunctionsService _functionsService;
  final FcmTokensDAO _fcmTokens;
  final String? Function() _readCurrentUid;

  StreamSubscription<String>? _installationRegistrationSubscription;
  String? _lastIssuedInstallationId;
  Future<void>? _latestServerWrite;
  Future<void>? _latestStop;
  int _pushLifecycleGeneration = 0;
  int _generationOfLatestRegistrationStart = -1;
  Future<void>? _latestUnregistration;

  ThisDevicePushRegistration({
    required this._firebaseMessaging,
    required this._functionsService,
    required this._fcmTokens,
    required this._readCurrentUid,
  });

  Future<void> maybeRegisterOnceGranted(Future<bool> permissionGranted) async {
    final startGeneration = _pushLifecycleGeneration;

    if (!await permissionGranted || !await _firebaseMessaging.isSupported()) {
      return;
    }

    await _latestStop;
    if (_stoppedSince(startGeneration)) return;

    _generationOfLatestRegistrationStart = _pushLifecycleGeneration;
    final latestUnregistration = _latestUnregistration;
    if (latestUnregistration != null) {
      await latestUnregistration
          .timeout(stopTimeLimit)
          .logWarningInsteadOfThrowing();
    }
    if (_stoppedSince(startGeneration)) return;

    final previousSubscription = _installationRegistrationSubscription;
    _installationRegistrationSubscription = _firebaseMessaging.onRegistered
        .listen(
          _registerInstallationIdWithServer,
          onError: _logInstallationRegistrationError,
        );
    await previousSubscription?.cancel();
    if (_stoppedSince(startGeneration)) return;

    await _firebaseMessaging.register().logWarningInsteadOfThrowing();
  }

  bool _stoppedSince(int startGeneration) =>
      startGeneration != _pushLifecycleGeneration;

  void _registerInstallationIdWithServer(String installationId) {
    _lastIssuedInstallationId = installationId;

    _latestServerWrite = _registerAfterEarlierServerWritesSettle(
      installationId,
      _latestServerWrite,
    );
  }

  Future<void> _registerAfterEarlierServerWritesSettle(
    String installationId,
    Future<void>? earlierServerWrites,
  ) async {
    await earlierServerWrites
        ?.timeout(stopTimeLimit)
        .logWarningInsteadOfThrowing();
    await _functionsService
        .registerFirebaseInstallation(installationId)
        .logWarningInsteadOfThrowing();
  }

  Future<void> _logInstallationRegistrationError(
    Object error,
    StackTrace stackTrace,
  ) =>
      LoggingService.I.warning(LogRecord(error: error, stackTrace: stackTrace));

  Future<void> stop() {
    final stopGeneration = ++_pushLifecycleGeneration;
    final stopping = _awaitRegistrationsThenMaybeDeleteRowAndUnregister(
      stopGeneration,
    ).timeout(stopTimeLimit).logWarningInsteadOfThrowing();
    _latestStop = stopping;

    return stopping;
  }

  Future<void> _awaitRegistrationsThenMaybeDeleteRowAndUnregister(
    int stopGeneration,
  ) async {
    final installationId = _lastIssuedInstallationId;
    final uid = _readCurrentUid();
    _lastIssuedInstallationId = null;

    await _stopListeningForInstallationIds();
    await _deleteRowAfterEarlierServerWritesSettle(uid, installationId);

    if (_newerStopOrRegistrationStartedSince(stopGeneration)) return;

    final unregistration = _firebaseMessaging
        .unregister()
        .logWarningInsteadOfThrowing();
    _latestUnregistration = unregistration;
    await unregistration;
  }

  Future<void> _deleteRowAfterEarlierServerWritesSettle(
    String? uid,
    String? installationId,
  ) async {
    final rowDeletion = _maybeDeleteRowOnceEarlierServerWritesSettle(
      uid,
      installationId,
      _latestServerWrite,
    );
    _latestServerWrite = rowDeletion;
    await rowDeletion;

    final noServerWriteStartedSinceDeleting = identical(
      _latestServerWrite,
      rowDeletion,
    );
    if (noServerWriteStartedSinceDeleting) {
      _latestServerWrite = null;
    }
  }

  Future<void> _maybeDeleteRowOnceEarlierServerWritesSettle(
    String? uid,
    String? installationId,
    Future<void>? earlierServerWrites,
  ) async {
    await earlierServerWrites;
    if (installationId == null || uid == null) return;

    await _fcmTokens
        .deleteByUidAndToken(uid: uid, token: installationId)
        .logWarningInsteadOfThrowing();
  }

  Future<void> _stopListeningForInstallationIds() async {
    final subscription = _installationRegistrationSubscription;
    _installationRegistrationSubscription = null;
    await subscription?.cancel();
  }

  bool _newerStopOrRegistrationStartedSince(int stopGeneration) =>
      stopGeneration != _pushLifecycleGeneration ||
      _generationOfLatestRegistrationStart == stopGeneration;

  void dispose() {
    _pushLifecycleGeneration++;
    unawaited(
      _installationRegistrationSubscription
          ?.cancel()
          .logWarningInsteadOfThrowing(),
    );
  }
}
