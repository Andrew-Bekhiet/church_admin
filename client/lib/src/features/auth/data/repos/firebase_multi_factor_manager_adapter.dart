import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show
        FirebaseAuth,
        FirebaseAuthMultiFactorException,
        PhoneAuthProvider,
        PhoneMultiFactorGenerator,
        PhoneMultiFactorInfo;
import 'package:firebase_auth/firebase_auth.dart' as auth
    show MultiFactorSession;


class FirebaseMultiFactorManagerAdapter implements MultiFactorManagerAdapter {
  final FirebaseAuth _firebaseAuth;

  FirebaseMultiFactorManagerAdapter({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  MultiFactorSession? _pendingMultiFactorLogin;
  FirebaseAuthMultiFactorException? _pendingMultiFactorException;

  @override
  bool get hasPendingMultifactorLogin => _pendingMultiFactorLogin != null;

  @override
  MultiFactorSession? get pendingMultifactorLogin => _pendingMultiFactorLogin;

  void addPendingMultiFactorLogin(
    MultiFactorSession session,
    FirebaseAuthMultiFactorException exception,
  ) {
    _pendingMultiFactorLogin = session;
    _pendingMultiFactorException = exception;
  }

  @override
  Future<MultiFactorSession> enrollNewMultiFactor({
    required String password,
  }) async {
    if (_firebaseAuth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    final multiFactorSession =
        await _firebaseAuth.currentUser!.multiFactor.getSession();

    return MultiFactorSession(
      platformSession: multiFactorSession,
      id: multiFactorSession.id,
      email: _firebaseAuth.currentUser!.email!,
      password: password,
    );
  }

  @override
  MultiFactorInfo getMultiFactorInfoForPendingSession() {
    if (!hasPendingMultifactorLogin) {
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
    final completer = Completer<(String, int?)>();

    final multiFactorInfo = factor != null
        ? _pendingMultiFactorException!.resolver.hints.firstWhere(
            (f) => f.uid == factor.uid,
          ) as PhoneMultiFactorInfo
        : null;

    _firebaseAuth.verifyPhoneNumber(
      forceResendingToken: forceResendingToken,
      phoneNumber: phoneNumber,
      multiFactorSession: session.platformSession as auth.MultiFactorSession,
      multiFactorInfo: multiFactorInfo,
      verificationCompleted: (credential) {
        finishMultiFactorSession(
          credential.verificationId!,
          credential.smsCode!,
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
  Future<void> finishMultiFactorSession(
    String verificationId,
    String smsCode,
  ) async {
    final assertion = PhoneMultiFactorGenerator.getAssertion(
      PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      ),
    );

    if (hasPendingMultifactorLogin) {
      await _pendingMultiFactorException!.resolver.resolveSignIn(assertion);
    } else {
      await _firebaseAuth.currentUser!.multiFactor.enroll(assertion);
    }
  }

  @override
  void clearPendingMultiFactorLogin() {
    _pendingMultiFactorLogin = null;
    _pendingMultiFactorException = null;
  }
}
