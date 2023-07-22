import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:desktop_webview_auth/desktop_webview_auth.dart';
import 'package:desktop_webview_auth/google.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, GoogleAuthProvider, IdTokenResult, OAuthCredential;
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseAuthAdapter extends AuthAdapter {
  static String _getHasuraUID(Json jwtClaims) => jwtClaims['x-hasura-user-id'];
  static String? _getPassword(Json jwtClaims) => jwtClaims['password'];
  static Future<IdTokenResult?> _getIdTokenResultFromAuthUser(
    auth.User? authUser,
  ) async {
    return await authUser?.getIdTokenResult();
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
    return _databaseService.users
        .streamSingleById(uid: _getHasuraUID(jwtClaims))
        .map(
          (user) => user!.copyWith(
            password: _getPassword(jwtClaims),
            idToken: token,
          ),
        );
  }

  @override
  Future<bool> signInWithGoogle() {
    return _currentPlatformService.isWeb ? _signInForWeb() : _signInForNative();
  }

  Future<bool> _signInForNative() async {
    if (_currentPlatformService.isDesktop) {
      final credential = await DesktopWebviewAuth.signIn(
        GoogleSignInArgs(
          redirectUri: SecretsService.I.webAuthHandler,
          clientId: SecretsService.I.desktopClientId,
        ),
      );
      if (credential != null) {
        await _firebaseAuth.signInWithCredential(
          OAuthCredential(
            accessToken: credential.accessToken,
            idToken: credential.idToken,
            secret: credential.tokenSecret,
            providerId: 'google.com',
            signInMethod: 'google.com',
          ),
        );
        return true;
      }
    } else {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;

        if (googleAuth.accessToken != null) {
          final credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken,
            accessToken: googleAuth.accessToken,
          );

          await _firebaseAuth.signInWithCredential(credential);
          return true;
        }
      }
    }
    return false;
  }

  Future<bool> _signInForWeb() async {
    final signInResult = await _firebaseAuth.signInWithPopup(
      GoogleAuthProvider(),
    );
    final credential = signInResult.credential;

    if (credential != null) {
      await _firebaseAuth.signInWithCredential(credential);
      return true;
    }
    return false;
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
