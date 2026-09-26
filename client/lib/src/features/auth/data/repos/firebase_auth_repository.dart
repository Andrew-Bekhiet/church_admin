import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';

class FirebaseAuthRepository implements AuthRepository {
  static AuthException _toAuthException(
    firebase_auth.FirebaseAuthException exception,
    StackTrace stackTrace,
  ) => switch (exception.code) {
    'invalid-credential' ||
    'wrong-password' ||
    'user-not-found' ||
    'invalid-email' => IncorrectCredentialsException(exception, stackTrace),
    'email-already-in-use' => EmailAlreadyInUseException(exception, stackTrace),
    'weak-password' => WeakPasswordException(exception, stackTrace),
    'too-many-requests' => TooManyAttemptsException(exception, stackTrace),
    'network-request-failed' => AuthNetworkException(exception, stackTrace),
    _ => UnknownAuthException(exception, stackTrace),
  };

  final firebase_auth.FirebaseAuth _auth;

  @override
  bool get isSignedIn => _auth.currentUser != null;

  @override
  String? get currentUserEmail => _auth.currentUser?.email;

  @override
  Stream<AuthUser?> get userChanges {
    return _auth.userChanges().asyncMap((user) async {
      if (user == null) return null;

      final idTokenResult = await user.getIdTokenResult();

      return AuthUser(
        uid: user.uid,
        email: user.email!,
        emailVerified: user.emailVerified,
        idToken: idTokenResult.token!,
        claims: idTokenResult.claims!,
      );
    });
  }

  FirebaseAuthRepository({required this._auth});

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
      throw _toAuthException(e, stackTrace);
    }
  }

  @override
  Future<void> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      throw _toAuthException(e, stackTrace);
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
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
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
    final user = _auth.currentUser;
    if (user == null) {
      throw StateError('Must be signed in');
    }

    try {
      await user.getIdToken(true);
    } on firebase_auth.FirebaseAuthException catch (e, stackTrace) {
      throw switch (e.code) {
        'user-token-expired' ||
        'invalid-user-token' ||
        'user-disabled' ||
        'user-not-found' => SessionRevokedException(e, stackTrace),
        _ => _toAuthException(e, stackTrace),
      };
    }
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
  }

  @override
  Future<void> dispose() async {
    return SynchronousFuture(null);
  }
}
