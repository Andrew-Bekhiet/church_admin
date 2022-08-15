import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

class CAAuthRepository extends AuthRepository<User, Person> {
  static CAAuthRepository get instance => GetIt.I<CAAuthRepository>();
  static CAAuthRepository get I => instance;

  final BehaviorSubject<String?> _idToken = BehaviorSubject.seeded(null);
  ValueStream<String?> get idTokenStream => _idToken.shareValue();
  String? get idToken => _idToken.valueOrNull;

  @override
  bool connectionChanged(DatabaseEvent snapshot) {
    final bool connected = snapshot.snapshot.value == true;

    if (connected) {
      scheduleOnDisconnect();
      recordActive();

      if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed &&
          (scaffoldMessengerKey.currentState?.mounted ?? false)) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            backgroundColor: Colors.greenAccent,
            content: Text('تم استرجاع الاتصال بالانترنت'),
          ),
        );
      }
    } else if (WidgetsBinding.instance.lifecycleState ==
            AppLifecycleState.resumed &&
        (scaffoldMessengerKey.currentState?.mounted ?? false)) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('لا يوجد اتصال بالانترنت!'),
        ),
      );
    }

    return connected;
  }

  @override
  Future<User> refreshIdToken(auth.User firebaseUser,
      [bool force = false]) async {
    Json idTokenClaims;

    try {
      final auth.IdTokenResult idToken =
          await firebaseUser.getIdTokenResult(force);

      await GetIt.I<CacheRepository>().box('User').putAll(idToken.claims ?? {});
      await GetIt.I<CacheRepository>()
          .box('User')
          .put('_idToken', idToken.token);

      await GetIt.I<FirebaseDatabase>()
          .ref()
          .child('Users/${firebaseUser.uid}/forceRefresh')
          .set(false)
          .whenComplete(() => null);

      idTokenClaims = {...idToken.claims ?? {}, '_idToken': idToken.token};
    } catch (e) {
      idTokenClaims = GetIt.I<CacheRepository>().box('User').toMap().cast();
      if (idTokenClaims.isEmpty) rethrow;
    }

    return refreshFromIdToken(idTokenClaims, firebaseUser: firebaseUser);
  }

  @override
  FutureOr<User> refreshFromIdToken(
    Json idTokenClaims, {
    auth.User? firebaseUser,
    String? uid,
    String? name,
    String? phone,
    String? email,
  }) async {
    if (_jwtExpired(idTokenClaims['_idToken'])) {
      return await refreshIdToken(
        GetIt.I<auth.FirebaseAuth>().currentUser!,
        true,
      );
    }

    if (_idToken != idTokenClaims['_idToken'] &&
        idTokenClaims['_idToken'] != null) {
      _idToken.add(idTokenClaims['_idToken']);
    }

    unawaited(
      Future.delayed(
        _jwtExpiry(idTokenClaims['_idToken'])
            .subtract(const Duration(minutes: 1))
            .difference(DateTime.now()),
        () => GetIt.I<auth.FirebaseAuth>().currentUser != null
            ? refreshIdToken(
                GetIt.I<auth.FirebaseAuth>().currentUser!,
                true,
              )
            : null,
      ),
    );

    personListener ??= CADatabaseRepository.I.users
        .getUserInfoStream(uid: idTokenClaims['x-hasura-user-id'])
        .map((user) {
          userSubject.add(User(
            uid: user.parsedData!.uid.uuid,
            name: user.parsedData!.name,
            photoUpdatedAt: user.parsedData!.photoUpdatedAt,
            userData: UserData(
              uid: user.parsedData!.uid.uuid,
              firebaseAuthUid: firebaseUser?.uid ?? uid!,
              email: firebaseUser?.email ?? email!,
              password: idTokenClaims['password'],
              permissions: CAPermissionsSet.fromSet(
                user.parsedData!.userData?.permissions.toSet() ?? {},
              ),
            ),
          ));
          return user.parsedData!.person != null
              ? Person.fromJson(user.parsedData!.person!.toJson())
              : null;
        })
        .whereType<Person>()
        .listen(refreshFromDoc);

    connectionListener ??= GetIt.I<FirebaseDatabase>()
        .ref()
        .child('.info/connected')
        .onValue
        .skip(2)
        .listen(connectionChanged);

    return User(
      uid: idTokenClaims['x-hasura-user-id']!,
      name: currentUser?.name ?? firebaseUser?.email ?? email!,
      photoUpdatedAt: currentUser?.photoUpdatedAt,
      userData: UserData(
        uid: idTokenClaims['x-hasura-user-id']!,
        firebaseAuthUid: firebaseUser?.uid ?? uid!,
        email: firebaseUser?.email ?? email!,
        password: idTokenClaims['password'],
        permissions: currentUser?.userData?.permissions ??
            CAPermissionsSet.fromSet(const {}),
      ),
    );
  }

  bool _jwtExpired(String idToken) {
    return DateTime.now().isAfter(_jwtExpiry(idToken));
  }

  DateTime _jwtExpiry(String idToken) {
    return DateTime.fromMillisecondsSinceEpoch(
      json.decode(
            utf8.decode(
              base64.decode(
                base64.normalize(
                  idToken.split('.')[1],
                ),
              ),
            ),
          )['exp'] *
          1000,
    );
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    await _idToken.close();
  }
}
