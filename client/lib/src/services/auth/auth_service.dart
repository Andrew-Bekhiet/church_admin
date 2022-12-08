import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class AuthService {
  static AuthService get instance => GetIt.I<AuthService>();

  AuthService({
    AuthCache? cache,
    AuthAdapter? adapter,
    ConnectivityService? connectivityService,
  })  : _cache = cache ?? GetIt.I<AuthCache>(),
        _adapter = adapter ?? GetIt.I<AuthAdapter>(),
        _connectivityService =
            connectivityService ?? GetIt.I<ConnectivityService>() {
    _init();
  }
  AuthService.noCachedUser({
    AuthCache? cache,
    AuthAdapter? adapter,
    ConnectivityService? connectivityService,
  })  : _cache = cache ?? GetIt.I<AuthCache>(),
        _adapter = adapter ?? GetIt.I<AuthAdapter>(),
        _connectivityService =
            connectivityService ?? GetIt.I<ConnectivityService>() {
    _init(cachedUser: false);
  }

  bool get isSignedIn => _currentUser != null;

  User? get currentUser => _currentUser;
  ValueStream<User?> get userStream => _userStreamController.stream;

  ValueStream<String?> get idTokenStream => _idTokenStreamController.stream;
  String? get currentIdToken => _idTokenStreamController.valueOrNull;

  User? get _currentUser => _userStreamController.valueOrNull;

  final AuthCache _cache;
  final AuthAdapter _adapter;
  final ConnectivityService _connectivityService;

  final BehaviorSubject<User?> _userStreamController = BehaviorSubject();
  late final StreamSubscription<User?> _userStreamSubscription;

  final BehaviorSubject<String?> _idTokenStreamController = BehaviorSubject();
  late final StreamSubscription<String?> _idTokenStreamSubscription;

  late final StreamSubscription<bool> _connectivitySubscription;

  Future<User?> signInWithGoogle() => _adapter.signInWithGoogle();

  Future<void> refreshToken() => _adapter.refreshToken();

  Future<void> signOut() async {
    await _adapter.signOut();
  }

  void _init({bool cachedUser = true}) {
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
    return _adapter.idTokenStream.listen(
      _idTokenStreamController.add,
      onError: _idTokenStreamController.addError,
      onDone: _idTokenStreamController.close,
    );
  }

  StreamSubscription<User?> _createUserStreamSubscription(bool cachedUser) {
    return (cachedUser
            ? Stream.fromFuture(Future(_cache.getUserFromCache))
                .asBroadcastStream()
                .switchMap(
                  (value) =>
                      _adapter.userStream.asBroadcastStream().startWith(value),
                )
            : _adapter.userStream.asBroadcastStream().startWith(null))
        .distinct()
        .asyncMap(_saveUserToCache)
        .listen(
          _userStreamController.add,
          onError: _userStreamController.addError,
          onDone: _userStreamController.close,
        );
  }

  Future<void> _onConnectivityChanged(bool connected) async {
    if (isSignedIn && connected && !_adapter.isTokenUpToDate(currentUser!)) {
      await refreshToken();
    }
  }

  Future<User?> _saveUserToCache(User? user) async {
    await _cache.writeUserToCache(user);
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
