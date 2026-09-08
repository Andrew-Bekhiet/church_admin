import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';

class FirebaseAuthRepository implements AuthRepository {
  final firebase_auth.FirebaseAuth _auth;

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
      throw IncorrectCredentialsException(e, stackTrace);
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
  }

  @override
  Future<void> dispose() async {
    return SynchronousFuture(null);
  }
}
