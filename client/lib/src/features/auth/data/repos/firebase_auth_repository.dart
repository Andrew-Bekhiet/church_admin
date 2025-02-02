import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';

class FirebaseAuthRepository implements AuthRepository {
  static MultiFactorSession _createMFASessionFromError(
    firebase_auth.FirebaseAuthMultiFactorException e,
    String email,
    String password,
  ) {
    return MultiFactorSession(
      id: e.resolver.session.id,
      email: email,
      password: password,
      enrolledFactors: e.resolver.hints
          .map(
            (hint) => MultiFactorInfo(
              id: hint.uid,
              // TODO: support totp
              type: MultiFactorType.phone,
              displayName: hint.displayName,
              enrolledAt: DateTime.fromMillisecondsSinceEpoch(
                hint.enrollmentTimestamp.round(),
              ),
            ),
          )
          .toList(),
    );
  }

  FirebaseAuthRepository({required firebase_auth.FirebaseAuth auth})
      : _auth = auth;

  final firebase_auth.FirebaseAuth _auth;

  firebase_auth.MultiFactorResolver? _pendingMultiFactorResolver;

  @override
  Stream<AuthUser?> get userChanges {
    return _auth.userChanges().asyncMap(
      (user) async {
        if (user == null) return null;

        _pendingMultiFactorResolver = null;

        final [enrolledFactors, idTokenResult] = await Future.wait([
          user.multiFactor.getEnrolledFactors(),
          user.getIdTokenResult(),
        ]);

        return AuthUser(
          uid: user.uid,
          email: user.email!,
          emailVerified: user.emailVerified,
          idToken: (idTokenResult as firebase_auth.IdTokenResult?)!.token!,
          claims: (idTokenResult as firebase_auth.IdTokenResult?)!.claims!,
          isMultiFactorEnabled: (enrolledFactors as List).isNotEmpty,
        );
      },
    );
  }

  @override
  Future<void> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      throw IncorrectCredentialsException(e, stackTrace);
    }
  }

  @override
  Future<void> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthMultiFactorException catch (e, stackTrace) {
      _pendingMultiFactorResolver = e.resolver;

      final multiFactorSession = _createMFASessionFromError(e, email, password);

      throw MultiFactorRequiredException(multiFactorSession, e, stackTrace);
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      throw IncorrectCredentialsException(e, stackTrace);
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    if (_auth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    await _auth.currentUser!.sendEmailVerification();
  }

  @override
  Future<void> completeMultiFactorChallenge({
    required MultiFactorChallenge challenge,
    required String verificationCode,
    MultiFactorInfo? selectedFactor,
  }) async {
    try {
      final firebase_auth.MultiFactorAssertion assertion =
          switch (selectedFactor?.type ?? MultiFactorType.phone) {
        MultiFactorType.phone =>
          firebase_auth.PhoneMultiFactorGenerator.getAssertion(
            firebase_auth.PhoneAuthProvider.credential(
              verificationId: challenge.verificationId,
              smsCode: verificationCode,
            ),
          ),
        // TODO: support totp
      };

      if (_pendingMultiFactorResolver != null) {
        await _pendingMultiFactorResolver!.resolveSignIn(assertion);
      } else {
        await _auth.currentUser!.multiFactor.enroll(assertion);
      }
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      if (_pendingMultiFactorResolver != null) {
        throw MultiFactorVerificationFailedException(e, stackTrace);
      } else {
        throw MultiFactorEnrollmentFailedException(e, stackTrace);
      }
    }
  }

  @override
  Future<MultiFactorSession> startMultiFactorEnrollment({
    required String password,
    required String phoneNumber,
  }) async {
    if (_auth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    try {
      await _auth.currentUser!.reauthenticateWithCredential(
        firebase_auth.EmailAuthProvider.credential(
          email: _auth.currentUser!.email!,
          password: password,
        ),
      );
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      throw IncorrectCredentialsException(e, stackTrace);
    }

    final multiFactorSession =
        await _auth.currentUser!.multiFactor.getSession();

    return MultiFactorSession(
      id: multiFactorSession.id,
      email: _auth.currentUser!.email!,
      password: password,
      phoneNumber: phoneNumber,
      enrolledFactors: const [],
    );
  }

  @override
  Future<MultiFactorChallenge> startMultiFactorChallenge({
    required MultiFactorSession session,
    MultiFactorInfo? selectedFactor,
    String? phoneNumber,
    int? resendToken,
  }) {
    if ((selectedFactor == null) == (phoneNumber == null)) {
      throw ArgumentError('Must provide either selectedFactor or phoneNumber');
    }

    final completer = Completer<MultiFactorChallenge>();

    final multiFactorInfo = selectedFactor == null
        ? null
        : _pendingMultiFactorResolver!.hints.firstWhere(
            (f) => f.uid == selectedFactor.id,
          ) as firebase_auth.PhoneMultiFactorInfo;

    MultiFactorChallenge? challenge;

    _auth.verifyPhoneNumber(
      forceResendingToken: resendToken,
      phoneNumber: phoneNumber,
      multiFactorSession: firebase_auth.MultiFactorSession(session.id),
      multiFactorInfo: multiFactorInfo,
      verificationCompleted: (credential) {
        completeMultiFactorChallenge(
          challenge: challenge ??= MultiFactorChallenge(
            verificationId: credential.verificationId!,
            createdAt: DateTime.now(),
          ),
          verificationCode: credential.smsCode!,
          selectedFactor: selectedFactor,
        );
      },
      verificationFailed: (e) => completer.completeError(
        MultiFactorVerificationFailedException(e, StackTrace.current),
      ),
      codeSent: (verificationId, resendToken) {
        if (completer.isCompleted) {
          return;
        }

        completer.complete(
          challenge ??= MultiFactorChallenge(
            createdAt: DateTime.now(),
            verificationId: verificationId,
            resendToken: resendToken,
          ),
        );
      },
      codeAutoRetrievalTimeout: (verificationId) {
        if (completer.isCompleted) {
          return;
        }

        completer.complete(
          challenge ??= MultiFactorChallenge(
            createdAt: DateTime.now(),
            verificationId: verificationId,
          ),
        );
      },
    );

    return completer.future;
  }

  @override
  Future<void> reauthWithEmailPassword({
    required String email,
    required String password,
  }) async {
    if (_auth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    await _auth.currentUser!.reauthenticateWithCredential(
      firebase_auth.EmailAuthProvider.credential(
        email: email,
        password: password,
      ),
    );
  }

  @override
  Future<void> refreshToken() async {
    if (_auth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    await _auth.currentUser!.getIdToken(true);
  }

  @override
  Future<void> reload() async {
    if (_auth.currentUser == null) {
      throw StateError('Must be signed in');
    }

    await _auth.currentUser!.reload();
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    _pendingMultiFactorResolver = null;
  }

  @override
  Future<void> dispose() async {
    _pendingMultiFactorResolver = null;
    return SynchronousFuture(null);
  }
}
