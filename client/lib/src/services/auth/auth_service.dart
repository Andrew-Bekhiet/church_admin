import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class AuthService {
  static AuthService get I => globalProviderContainer.read(authServiceProvider);

  AuthService({
    required AuthCache cache,
    required AuthAdapter adapter,
    ConnectivityService? connectivityService,
  })  : _cache = cache,
        _adapter = adapter,
        _connectivityService = connectivityService ?? ConnectivityService.I {
    _init();
  }
  AuthService.noCachedUser({
    required AuthCache cache,
    required AuthAdapter adapter,
    ConnectivityService? connectivityService,
  })  : _cache = cache,
        _adapter = adapter,
        _connectivityService = connectivityService ?? ConnectivityService.I {
    _init(cachedUser: false);
  }

  bool get isSignedIn => _currentUser != null;
  bool get hasPendingMultifactorSession =>
      _adapter.hasPendingMultifactorSession;

  MultiFactorSession? get pendingMultifactorSession =>
      _adapter.pendingMultifactorSession;

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

    if (rslt) await _saveUserPasswordHash(email, password);

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
      await _saveUserPasswordHash(email, password);
      await _adapter.sendEmailVerification();
    }

    return rslt;
  }

  Future<void> sendEmailVerification() => _adapter.sendEmailVerification();

  Future<void> reload() => _adapter.reload();

  Future<MultiFactorSession> startMultiFactorSession({
    required String password,
  }) {
    if (!isSignedIn) throw StateError('Must be signed in');

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
    await _saveUserPasswordHash(session.email, session.password);
  }

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
                .startWithFuture(Future.sync(_cache.getUserFromCache))
            : _adapter.userStream.asBroadcastStream().startWith(null))
        .distinct()
        .asyncMap(_saveUserToCache)
        .asyncMap(_updateUserPasswordHash)
        .listen(
          _userStreamController.add,
          onError: _userStreamController.addError,
          onDone: _userStreamController.close,
        );
  }

  Future<void> _saveUserPasswordHash(String email, String password) async {
    if (await LocalAuthService.I.getPasswordHash() != null) return;

    final hashBytes = await EncryptionService.I.hashPassword(
      password: password,
      keyBytes:
          await EncryptionService.I.deriveKey(password: password, salt: email),
    );

    return LocalAuthService.I.savePasswordHash(hashBytes);
  }

  Future<User?> _updateUserPasswordHash(User? user) async {
    if (user == null) {
      await LocalAuthService.I.clearPasswordHash();
      return null;
    } else {
      return user.copyWith(
        passwordKeyHash: await LocalAuthService.I.getPasswordHash(),
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
