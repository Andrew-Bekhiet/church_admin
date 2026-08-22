import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService with WidgetsBindingObserver {
  static LocalAuthService get I =>
      globalProviderContainer.read(localAuthServiceProvider);

  final Duration timeToReauth;

  final CurrentPlatformService _currentPlatformService;

  final LocalAuthentication _localAuthPlugin;

  final NotificationsService _notificationsService;
  bool _shouldAuthenticate = false;

  final Map<String, bool> _oneTimeAuthForPath = {};

  Timer? _timer;
  Completer<bool>? _localAuthCompleter;
  final StreamController<void> _refreshUI = StreamController.broadcast()
    ..add(null);

  bool get shouldAuthenticate => _shouldAuthenticate;

  Stream<void> get refreshUIStream => _refreshUI.stream;

  LocalAuthService({
    required this._localAuthPlugin,
    this.timeToReauth = const Duration(seconds: 30),
    CurrentPlatformService? currentPlatformService,
    NotificationsService? notificationService,
  }) : _notificationsService = notificationService ?? NotificationsService.I,
       _currentPlatformService =
           currentPlatformService ?? CurrentPlatformService.I {
    scheduleReauth();
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  LocalAuthService.noInitialAuth({
    required this._localAuthPlugin,
    this.timeToReauth = const Duration(seconds: 30),
    CurrentPlatformService? currentPlatformService,
    NotificationsService? notificationService,
  }) : _notificationsService = notificationService ?? NotificationsService.I,
       _currentPlatformService =
           currentPlatformService ?? CurrentPlatformService.I {
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  bool requestOneTimeAuthForPath(String path) {
    final auth = _oneTimeAuthForPath[path];
    if (auth == null) {
      _oneTimeAuthForPath[path] = false;

      return false;
    } else {
      _oneTimeAuthForPath.remove(path);

      return auth;
    }
  }

  bool shouldAuthenticateForPath(String path) =>
      !(_oneTimeAuthForPath[path] ?? false);

  Timer _createTimer() => Timer(timeToReauth, scheduleReauth);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      if (shouldAuthenticate) _refreshUI.add(null);
      _timer?.cancel();
      _timer = null;
    } else if (AuthBloc.I.isSignedIn && !shouldAuthenticate) {
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

  void resetAuthState({String? path}) {
    _shouldAuthenticate = false;
    if (path != null) _oneTimeAuthForPath[path] = true;

    _refreshUI.add(null);

    final notificationsService = _notificationsService;

    if (notificationsService.isPaused) {
      notificationsService.resumeListeners();
    }
    _timer?.cancel();
    _timer = null;
  }

  Future<bool> canCheckBiometrics() async {
    try {
      return !kIsWeb &&
          await _localAuthPlugin.canCheckBiometrics &&
          await _localAuthPlugin.isDeviceSupported();
    } on MissingPluginException {
      return false;
    }
  }

  Future<bool> authenticate() async {
    if (_localAuthCompleter case final completer?) return completer.future;

    final localAuthPlugin = _localAuthPlugin;
    _localAuthCompleter = Completer<bool>();

    return localAuthPlugin
        .authenticate(
          localizedReason: 'برجاء التحقق للمتابعة',
          biometricOnly: !_currentPlatformService.isWindows,
          persistAcrossBackgrounding: true,
        )
        .then(
          (result) {
            _localAuthCompleter?.complete(result);
            _localAuthCompleter = null;

            return result;
          },
          onError: (error, stackTrace) {
            _localAuthCompleter?.complete(false);
            _localAuthCompleter = null;

            return false;
          },
        );
  }

  Future<bool> verifyPassword({
    required String email,
    required String password,
    String? storedPasswordHash,
  }) async {
    final keyBytes = await EncryptionService.I.deriveKey(
      password: password,
      salt: email,
    );

    return EncryptionService.I.verifyPassword(
      passwordToVerify: password,
      keyBytes: keyBytes,
      storedPasswordHash: storedPasswordHash,
    );
  }

  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    await _refreshUI.close();
  }
}
