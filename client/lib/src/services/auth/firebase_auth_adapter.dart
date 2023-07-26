import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show
        EmailAuthProvider,
        FirebaseAuth,
        FirebaseAuthMultiFactorException,
        IdTokenResult,
        PhoneAuthProvider,
        PhoneMultiFactorGenerator,
        PhoneMultiFactorInfo;
import 'package:firebase_auth/firebase_auth.dart' as auth
    show MultiFactorSession, User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseAuthAdapter extends AuthAdapter {
  static String _getHasuraUID(Json jwtClaims) => jwtClaims['x-hasura-user-id'];
  static Future<(auth.User?, IdTokenResult?)> _getIdTokenResultFromAuthUser(
    auth.User? authUser,
  ) async {
    return (authUser, await authUser?.getIdTokenResult());
  }

  FirebaseAuthAdapter({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    DatabaseService? databaseService,
    CurrentPlatformService? currentPlatformService,
  })  : _googleSignIn = googleSignIn,
        _firebaseAuth = firebaseAuth,
        _databaseService = databaseService ?? DatabaseService.I,
        _currentPlatformService =
            currentPlatformService ?? CurrentPlatformService.I;

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final DatabaseService _databaseService;
  final CurrentPlatformService _currentPlatformService;

  MultiFactorSession? _pendingMultiFactorSession;
  FirebaseAuthMultiFactorException? _pendingMultiFactorException;

  @override
  bool get hasPendingMultifactorSession => _pendingMultiFactorSession != null;
  @override
  MultiFactorSession? get pendingMultifactorSession =>
      _pendingMultiFactorSession;

  @override
  late final Stream<User?> userStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenResultFromAuthUser)
      .onErrorReturn((null, null)).switchMap(_onUserChanged);

  @override
  late final Stream<String?> idTokenStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenResultFromAuthUser)
      .onErrorReturn((null, null))
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
    (auth.User?, IdTokenResult?) rslt,
  ) {
    final (authUser, idTokenResult) = rslt;

    if (authUser == null || idTokenResult == null) return Stream.value(null);

    _clearPendingMultiFactorSession();

    return _getUserStreamFromDB(
      idTokenResult.claims ?? {},
    ).asyncMap(
      (user) async => user!.copyWith(
        emailVerified: authUser.emailVerified,
        idToken: idTokenResult.token,
        isMultiFactorEnrolled:
            (await authUser.multiFactor.getEnrolledFactors()).isNotEmpty,
      ),
    );
  }

  void _clearPendingMultiFactorSession() {
    _pendingMultiFactorSession = null;
    _pendingMultiFactorException = null;
  }

  Stream<User?> _getUserStreamFromDB(Json jwtClaims) {
    return _databaseService.users
        .streamSingleById(uid: _getHasuraUID(jwtClaims));
  }

  @override
  Future<bool> signInWithEmailPassword({
    required String email,
    required String password,
    bool reauth = false,
  }) async {
    try {
      if (reauth) {
        final user = _firebaseAuth.currentUser;

        if (user == null) throw StateError('Must be signed in to reauth');

        final credential = EmailAuthProvider.credential(
          email: email,
          password: password,
        );

        await user.reauthenticateWithCredential(credential);
      } else {
        await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      }

      return true;
    } on FirebaseAuthMultiFactorException catch (e) {
      final multiFactorSession = MultiFactorSession(
        id: e.resolver.session.id,
        email: email,
        password: password,
      );

      _pendingMultiFactorSession = multiFactorSession;
      _pendingMultiFactorException = e;

      throw MultiFactorException(multiFactorSession);
    }
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
  Future<MultiFactorSession> startMultiFactorSession({
    required String password,
  }) async {
    if (_firebaseAuth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    final multiFactorSession =
        await _firebaseAuth.currentUser!.multiFactor.getSession();

    return MultiFactorSession(
      id: multiFactorSession.id,
      email: _firebaseAuth.currentUser!.email!,
      password: password,
    );
  }

  @override
  MultiFactorInfo getMultiFactorInfoFor(MultiFactorSession session) {
    if (!hasPendingMultifactorSession) {
      throw StateError('No pending multi factor session');
    }

    final factor = _pendingMultiFactorException!.resolver.hints
        .firstWhere((f) => f is PhoneMultiFactorInfo);

    return MultiFactorInfo(
      uid: factor.uid,
      displayName: factor.displayName,
      factorId: factor.factorId,
      enrollmentTimestamp: factor.enrollmentTimestamp.round(),
    );
  }

  @override
  Future<(String verificationId, int? resendToken)> initiateMultifactorLogin(
    MultiFactorSession session, {
    MultiFactorInfo? factor,
    String? phoneNumber,
    int? forceResendingToken,
  }) {
    final completer = Completer<(String verificationId, int? resendToken)>();

    final e = _pendingMultiFactorException;

    _firebaseAuth.verifyPhoneNumber(
      forceResendingToken: forceResendingToken,
      phoneNumber: phoneNumber,
      multiFactorSession: auth.MultiFactorSession(session.id),
      multiFactorInfo: factor != null
          ? e!.resolver.hints.firstWhere(
              (f) => f.uid == factor.uid,
            ) as PhoneMultiFactorInfo
          : null,
      verificationCompleted: (credential) {
        finishMultiFactorLogin(
          credential.verificationId!,
          credential.smsCode!,
          session,
        );
      },
      verificationFailed: completer.completeError,
      codeSent: (verificationId, resendToken) {
        if (!completer.isCompleted) {
          completer.complete((verificationId, resendToken));
        }
      },
      codeAutoRetrievalTimeout: (verificationId) {
        if (!completer.isCompleted) {
          completer.complete((verificationId, null));
        }
      },
    );

    return completer.future;
  }

  @override
  Future<void> finishMultiFactorLogin(
    String verificationId,
    String smsCode,
    MultiFactorSession session,
  ) async {
    final assertion = PhoneMultiFactorGenerator.getAssertion(
      PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      ),
    );

    if (!hasPendingMultifactorSession) {
      await _firebaseAuth.currentUser!.multiFactor.enroll(assertion);
    } else {
      await _pendingMultiFactorException!.resolver.resolveSignIn(assertion);
    }
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
    if (!_currentPlatformService.isDesktop) {
      await _googleSignIn.signOut();
    }
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> dispose() async {}
}
