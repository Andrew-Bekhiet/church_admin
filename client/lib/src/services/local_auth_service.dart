import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService with WidgetsBindingObserver {
  static LocalAuthService get I =>
      globalProviderContainer.read(localAuthServiceProvider);

  final Duration timeToReauth;

  final CurrentPlatformService _currentPlatformService;

  final LocalAuthentication _localAuthPlugin;

  final CANotificationsService _notificationsService;

  bool get shouldAuthenticate => _shouldAuthenticate;
  bool _shouldAuthenticate = false;

  Timer? _timer;
  Completer<bool>? _localAuthCompleter;

  Stream<void> get refreshUIStream => _refreshUI.stream;
  final StreamController<void> _refreshUI = StreamController.broadcast()
    ..add(null);

  LocalAuthService({
    required LocalAuthentication localAuthPlugin,
    CurrentPlatformService? currentPlatformService,
    CANotificationsService? notificationService,
    this.timeToReauth = const Duration(seconds: 30),
  })  : _localAuthPlugin = localAuthPlugin,
        _notificationsService = notificationService ?? CANotificationsService.I,
        _currentPlatformService =
            currentPlatformService ?? CurrentPlatformService.I {
    scheduleReauth();
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  LocalAuthService.noInitialAuth({
    required LocalAuthentication localAuthPlugin,
    CurrentPlatformService? currentPlatformService,
    CANotificationsService? notificationService,
    this.timeToReauth = const Duration(seconds: 30),
  })  : _localAuthPlugin = localAuthPlugin,
        _notificationsService = notificationService ?? CANotificationsService.I,
        _currentPlatformService =
            currentPlatformService ?? CurrentPlatformService.I {
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
      _timer?.cancel();
      _timer = null;
    } else if (AuthService.I.isSignedIn && !shouldAuthenticate) {
      _timer ??= _createTimer();
    }
  }

  void scheduleReauth() {
    _shouldAuthenticate = true;

    final notificationsService = _notificationsService;

    if (!notificationsService.isPaused) {
      notificationsService.pauseListeners();
    }
  }

  void resetAuthState() {
    _shouldAuthenticate = false;

    _refreshUI.add(null);

    final notificationsService = _notificationsService;

    if (notificationsService.isPaused) {
      notificationsService.resumeListeners();
    }
    _timer?.cancel();
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
          biometricOnly: !_currentPlatformService.isWindows,
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
