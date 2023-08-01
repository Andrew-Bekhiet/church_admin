import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class AuthService {
  static AuthService get I => globalProviderContainer.read(authServiceProvider);

  AuthService({
    required AuthStorage storage,
    required AuthAdapter adapter,
    required MultiFactorManagerAdapter multiFactorAdapter,
    ConnectivityService? connectivityService,
  })  : _storage = storage,
        _adapter = adapter,
        _connectivityService = connectivityService ?? ConnectivityService.I {
    multiFactorManager = MultiFactorManager(
      adapter: multiFactorAdapter,
      authService: this,
      storage: storage,
    );

    _initSubscriptions();
  }

  AuthService.noCachedUser({
    required AuthStorage storage,
    required AuthAdapter adapter,
    required MultiFactorManagerAdapter multiFactorAdapter,
    ConnectivityService? connectivityService,
  })  : _storage = storage,
        _adapter = adapter,
        _connectivityService = connectivityService ?? ConnectivityService.I {
    multiFactorManager = MultiFactorManager(
      adapter: multiFactorAdapter,
      authService: this,
      storage: storage,
    );

    _initSubscriptions(cachedUser: false);
  }

  bool get isSignedIn => _currentUser != null;

  User? get currentUser => _currentUser;
  ValueStream<User?> get userStream => _userStreamController.stream;

  ValueStream<String?> get idTokenStream => _idTokenStreamController.stream;
  String? get currentIdToken => _idTokenStreamController.valueOrNull;

  User? get _currentUser => _userStreamController.valueOrNull;

  final AuthStorage _storage;
  final AuthAdapter _adapter;
  late final MultiFactorManager multiFactorManager;

  final ConnectivityService _connectivityService;

  final BehaviorSubject<User?> _userStreamController = BehaviorSubject();
  late final StreamSubscription<User?> _userStreamSubscription;

  final BehaviorSubject<String?> _idTokenStreamController = BehaviorSubject();
  late final StreamSubscription<String?> _idTokenStreamSubscription;

  late final StreamSubscription<bool> _connectivitySubscription;

  Future<bool> signInWithEmailPassword({
    required String email,
    required String password,
    bool reauth = false,
  }) async {
    final rslt = await _adapter.signInWithEmailPassword(
      email: email,
      password: password,
      reauth: reauth,
    );

    if (rslt) await _storage.saveUserPasswordHash(email, password);

    return rslt;
  }

  Future<bool> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    final rslt = await _adapter.signUpWithEmailPassword(
      email: email,
      password: password,
    );

    if (rslt) {
      await _storage.saveUserPasswordHash(email, password);
      await _adapter.sendEmailVerification();
    }

    return rslt;
  }

  Future<void> sendEmailVerification() => _adapter.sendEmailVerification();

  Future<void> reload() => _adapter.reload();

  Future<void> refreshToken() => _adapter.refreshToken();

  Future<String?> getStoredPasswordHash() => _storage.getPasswordHash();

  Future<void> signOut() async {
    await _adapter.signOut();
  }

  void _initSubscriptions({bool cachedUser = true}) {
    _userStreamSubscription = _createUserStreamSubscription(cachedUser);
    _idTokenStreamSubscription = _createIdTokenStreamSubscription();

    _connectivitySubscription = _createConnectivityStreamSubscription();
  }

  StreamSubscription<bool> _createConnectivityStreamSubscription() {
    return _connectivityService.connectivityStream
        .distinct()
        .listen(_onConnectivityChanged);
  }

  StreamSubscription<String?> _createIdTokenStreamSubscription() {
    return _adapter.idTokenStream.map(_scheduleTokenRefersh).listen(
          _idTokenStreamController.add,
          onError: _idTokenStreamController.addError,
          onDone: _idTokenStreamController.close,
        );
  }

  StreamSubscription<User?> _createUserStreamSubscription(bool cachedUser) {
    return (cachedUser
            ? _adapter.userStream
                .asBroadcastStream()
                .startWithFuture(Future.sync(_storage.getUserFromCache))
            : _adapter.userStream.asBroadcastStream().startWith(null))
        .distinct()
        .asyncMap(_saveUserToCache)
        .asyncMap(_updateUserWithPasswordHash)
        .listen(
          _userStreamController.add,
          onError: _userStreamController.addError,
          onDone: _userStreamController.close,
        );
  }

  Future<User?> _updateUserWithPasswordHash(User? user) async {
    if (user == null) {
      await _storage.clearPasswordHash();
      return null;
    } else {
      return user.copyWith(
        passwordKeyHash: await _storage.getPasswordHash(),
      );
    }
  }

  String? _scheduleTokenRefersh(String? idToken) {
    if (idToken != null) {
      Future.delayed(
        _adapter.tokenExpiry(idToken).difference(DateTime.now()),
        refreshToken,
      );
    }

    return idToken;
  }

  Future<void> _onConnectivityChanged(bool connected) async {
    if (isSignedIn && connected && !_adapter.isTokenUpToDate(currentUser!)) {
      await refreshToken();
    }
  }

  Future<User?> _saveUserToCache(User? user) async {
    await _storage.writeUserToCache(user);
    return user;
  }

  Future<void> dispose() async {
    await _connectivitySubscription.cancel();

    await _adapter.dispose();
    await _userStreamSubscription.cancel();
    if (!_userStreamController.isClosed) await _userStreamController.close();

    await _idTokenStreamSubscription.cancel();
    if (!_idTokenStreamController.isClosed) {
      await _idTokenStreamController.close();
    }
  }
}
