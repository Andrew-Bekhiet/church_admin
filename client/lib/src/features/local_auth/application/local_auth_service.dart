import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
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
  final Clock _clock;
  bool _shouldAuthenticate = false;

  final Set<String> _authenticatedPaths = {};

  DateTime? _lastActiveAt;
  Completer<bool>? _localAuthCompleter;
  final StreamController<void> _refreshUI = StreamController.broadcast()
    ..add(null);

  bool get shouldAuthenticate {
    if (_shouldAuthenticate) return true;
    if (_lastActiveAt case final lastActiveAt?) {
      return _clock.now().difference(lastActiveAt) >= timeToReauth;
    }

    return false;
  }

  Stream<void> get refreshUIStream => _refreshUI.stream;

  LocalAuthService({
    required this._localAuthPlugin,
    required UserDataWiper userDataWiper,
    this.timeToReauth = const Duration(seconds: 30),
    CurrentPlatformService? currentPlatformService,
    NotificationsService? notificationService,
    Clock? clock,
  }) : _notificationsService = notificationService ?? NotificationsService.I,
       _clock = clock ?? const Clock(),
       _currentPlatformService =
           currentPlatformService ?? CurrentPlatformService.I {
    userDataWiper.register(revokeAuthForAllPaths);
    scheduleReauth();
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  LocalAuthService.noInitialAuth({
    required this._localAuthPlugin,
    required UserDataWiper userDataWiper,
    this.timeToReauth = const Duration(seconds: 30),
    CurrentPlatformService? currentPlatformService,
    NotificationsService? notificationService,
    Clock? clock,
  }) : _notificationsService = notificationService ?? NotificationsService.I,
       _clock = clock ?? const Clock(),
       _currentPlatformService =
           currentPlatformService ?? CurrentPlatformService.I {
    userDataWiper.register(revokeAuthForAllPaths);
    didChangeAppLifecycleState(
      WidgetsBinding.instance.lifecycleState ?? AppLifecycleState.resumed,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  bool shouldAuthenticateForPath(String path) =>
      !_authenticatedPaths.contains(path);

  void revokeAuthForPath(String path) => _authenticatedPaths.remove(path);

  void revokeAuthForAllPaths() => _authenticatedPaths.clear();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      final needsReauth = shouldAuthenticate;
      _lastActiveAt = null;
      if (needsReauth) {
        scheduleReauth();
        _refreshUI.add(null);
      }
    } else if (AuthBloc.I.isSignedIn && !shouldAuthenticate) {
      _lastActiveAt ??= _clock.now();
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
    _lastActiveAt = null;
    if (path != null) _authenticatedPaths.add(path);

    _refreshUI.add(null);

    final notificationsService = _notificationsService;

    if (notificationsService.isPaused) {
      notificationsService.resumeListeners();
    }
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

  Future<bool> verifyPassword(String password) async {
    final email = AuthBloc.I.currentUser?.email;
    if (email == null) return false;

    final storedPasswordHash = await AuthStorage.I.getPasswordHash();
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
    await _refreshUI.close();
  }
}
