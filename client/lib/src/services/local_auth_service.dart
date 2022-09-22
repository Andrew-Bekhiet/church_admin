import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:universal_platform/universal_platform.dart';

class LocalAuthService with WidgetsBindingObserver {
  static LocalAuthService get I => GetIt.I<LocalAuthService>();

  final LocalAuthentication _localAuthPlugin = LocalAuthentication();

  bool shouldAuthenticate = false;

  Timer? _timer;
  Completer<bool>? _localAuthCompleter;
  final Duration timeToReauth;

  final StreamController<void> _refreshUI = StreamController.broadcast()
    ..add(null);
  Stream<void> get refreshUIStream => _refreshUI.stream;

  LocalAuthService({this.timeToReauth = const Duration(seconds: 30)}) {
    scheduleReauth();
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  LocalAuthService.noInitialAuth({
    this.timeToReauth = const Duration(seconds: 30),
  }) {
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  Timer _createTimer() => Timer(timeToReauth, scheduleReauth);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      if (shouldAuthenticate) _refreshUI.add(null);
    } else if (CAAuthRepository.I.isSignedIn && !shouldAuthenticate) {
      _timer = _createTimer();
    }
  }

  void scheduleReauth() {
    shouldAuthenticate = true;

    final notificationsService = GetIt.I<CANotificationsService>();

    if (!(notificationsService.onFCMTokenRefresh?.isPaused ?? false)) {
      notificationsService.onFCMTokenRefresh?.pause();
    }

    if (!(notificationsService.onForegroundMessageSubscription?.isPaused ??
        false)) {
      notificationsService.onForegroundMessageSubscription?.pause();
    }

    if (!notificationsService.onMessageOpenedAppSubscription.isPaused) {
      notificationsService.onMessageOpenedAppSubscription.pause();
    }
  }

  void resetAuthState() {
    shouldAuthenticate = false;

    _refreshUI.add(null);

    final notificationsService = GetIt.I<CANotificationsService>();

    if (notificationsService.onFCMTokenRefresh?.isPaused ?? false) {
      notificationsService.onFCMTokenRefresh?.resume();
    }

    if (notificationsService.onForegroundMessageSubscription?.isPaused ??
        false) {
      notificationsService.onForegroundMessageSubscription?.resume();
    }

    if (notificationsService.onMessageOpenedAppSubscription.isPaused) {
      notificationsService.onMessageOpenedAppSubscription.resume();
    }
    _timer = null;
  }

  Future<bool> canCheckBiometrics() async {
    return !kIsWeb &&
        await _localAuthPlugin.canCheckBiometrics &&
        await _localAuthPlugin.isDeviceSupported();
  }

  Future<bool> authenticate() async {
    if (_localAuthCompleter != null) return _localAuthCompleter!.future;

    final localAuthentication = _localAuthPlugin;
    _localAuthCompleter = Completer<bool>();

    _localAuthCompleter!.complete(
      localAuthentication
          .authenticate(
        localizedReason: 'برجاء التحقق للمتابعة',
        options: AuthenticationOptions(
          biometricOnly: !UniversalPlatform.isWindows,
          useErrorDialogs: false,
        ),
      )
          .then(
        (result) {
          _localAuthCompleter = null;
          return result;
        },
      ),
    );

    return _localAuthCompleter!.future;
  }

  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    await _refreshUI.close();
  }
}
