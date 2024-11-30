import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show
        EmailAuthProvider,
        FirebaseAuth,
        FirebaseAuthMultiFactorException,
        IdTokenResult;
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:rxdart/rxdart.dart';

class FirebaseAuthAdapter implements AuthAdapter {
  static String _getHasuraUID(Json jwtClaims) => jwtClaims['x-hasura-user-id'];

  static Future<(auth.User?, IdTokenResult?, bool)>
      _getIdTokenAndMultiFactorFromAuthUser(
    auth.User? authUser,
  ) async {
    final enrolledFactors =
        await authUser?.multiFactor.getEnrolledFactors() ?? [];
    final idTokenResult = await authUser?.getIdTokenResult();

    return (authUser, idTokenResult, enrolledFactors.isNotEmpty);
  }

  FirebaseAuthAdapter({
    required FirebaseAuth firebaseAuth,
    required this.multiFactorManagerAdapter,
    DatabaseService? databaseService,
  })  : _firebaseAuth = firebaseAuth,
        _databaseService = databaseService ?? DatabaseService.I;

  final FirebaseAuth _firebaseAuth;
  final DatabaseService _databaseService;
  @override
  final FirebaseMultiFactorManagerAdapter multiFactorManagerAdapter;

  @override
  late final Stream<User?> userStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenAndMultiFactorFromAuthUser)
      .onErrorReturn((null, null, false)).switchMap(_onUserChanged);

  @override
  late final Stream<String?> idTokenStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenAndMultiFactorFromAuthUser)
      .onErrorReturn((null, null, false))
      .map((t) => t.$2?.token)
      .distinct();

  @override
  Future<void> reload() {
    if (_firebaseAuth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    return _firebaseAuth.currentUser!.reload();
  }

  Stream<User?> _onUserChanged(
    (auth.User?, IdTokenResult?, bool) rslt,
  ) {
    final (authUser, idTokenResult, multiFactorEntrolled) = rslt;

    if (authUser == null || idTokenResult == null) return Stream.value(null);

    multiFactorManagerAdapter.clearPendingMultiFactorLogin();

    return _getUserStreamFromDB(
      idTokenResult.claims ?? {},
    ).map(
      (user) => user!.copyWith(
        isMultiFactorEnrolled: multiFactorEntrolled,
        emailVerified: authUser.emailVerified,
        idToken: idTokenResult.token,
      ),
    );
  }

  Stream<User?> _getUserStreamFromDB(Json jwtClaims) {
    return _databaseService.users
        .streamSingleById(id: _getHasuraUID(jwtClaims));
  }

  @override
  Future<bool> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return true;
    } on FirebaseAuthMultiFactorException catch (e) {
      final multiFactorSession = MultiFactorSession(
        platformSession: e.resolver.session,
        id: e.resolver.session.id,
        email: email,
        password: password,
      );

      multiFactorManagerAdapter.addPendingMultiFactorLogin(
        multiFactorSession,
        e,
      );

      throw MultiFactorException(multiFactorSession);
    }
  }

  @override
  Future<bool> reauthWithEmailPassword({
    required String email,
    required String password,
  }) async {
    final user = _firebaseAuth.currentUser;

    if (user == null) throw StateError('Must be signed in to reauth');

    final credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );

    await user.reauthenticateWithCredential(credential);

    return true;
  }

  @override
  Future<bool> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return true;
  }

  @override
  Future<void> sendEmailVerification() async {
    if (_firebaseAuth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    await _firebaseAuth.currentUser!.sendEmailVerification();
  }

  @override
  bool isTokenUpToDate(User user) {
    return tokenExpiry(user.idToken!).isAfter(DateTime.now());
  }

  @override
  DateTime tokenExpiry(String idToken) {
    return DateTime.fromMillisecondsSinceEpoch(
      ((json.decode(
                utf8.decode(
                  base64.decode(
                    base64.normalize(
                      idToken.split('.')[1],
                    ),
                  ),
                ),
              )['exp'] as num) *
              1000)
          .toInt(),
    );
  }

  @override
  Future<void> refreshToken() async {
    if (_firebaseAuth.currentUser == null) throw StateError('Not signed in');
    await _firebaseAuth.currentUser!.getIdToken(true);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> dispose() async {}
}
