import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, GoogleAuthProvider, IdTokenResult;
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseAuthAdapter extends AuthAdapter {
  static String _getHasuraUID(Json jwtClaims) => jwtClaims['x-hasura-user-id'];
  static String _getPassword(Json jwtClaims) => jwtClaims['password'];
  static Future<IdTokenResult?> _getIdTokenResultFromAuthUser(
    auth.User? authUser,
  ) async {
    return await authUser?.getIdTokenResult();
  }

  FirebaseAuthAdapter({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    DatabaseService? databaseRepository,
  })  : _googleSignIn = googleSignIn ?? GetIt.I<GoogleSignIn>(),
        _firebaseAuth = firebaseAuth ?? GetIt.I<FirebaseAuth>(),
        _databaseRepository = databaseRepository ?? GetIt.I<DatabaseService>();

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final DatabaseService _databaseRepository;

  @override
  late final Stream<User?> userStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenResultFromAuthUser)
      .onErrorReturn(null)
      .switchMap(_onUserChanged);

  @override
  late final Stream<String?> idTokenStream = _firebaseAuth
      .userChanges()
      .asyncMap(_getIdTokenResultFromAuthUser)
      .onErrorReturn(null)
      .map((t) => t?.token)
      .distinct();

  Stream<User?> _onUserChanged(IdTokenResult? idTokenResult) {
    if (idTokenResult == null) return Stream.value(null);

    return _getUserStreamFromDB(
      idTokenResult.claims ?? {},
      idTokenResult.token!,
    );
  }

  Stream<User?> _getUserStreamFromDB(
    Json jwtClaims,
    String token,
  ) {
    return _databaseRepository.users
        .getUserInfoStream(uid: _getHasuraUID(jwtClaims))
        .map(
          (user) => user.copyWith(
            password: _getPassword(jwtClaims),
            idToken: token,
          ),
        );
  }

  @override
  Future<User?> signInWithGoogle() {
    return kIsWeb ? _signInForWeb() : _signInForNative();
  }

  Future<User?> _signInForNative() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;

      if (googleAuth.accessToken != null) {
        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        await _firebaseAuth.signInWithCredential(credential);
      }
    }
    return null;
  }

  Future<User?> _signInForWeb() async {
    final signInResult = await _firebaseAuth.signInWithPopup(
      GoogleAuthProvider(),
    );
    final credential = signInResult.credential;

    if (credential != null) {
      await _firebaseAuth.signInWithCredential(credential);
    }
    return null;
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
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> dispose() async {}
}
