import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

class UserPersistenceService {
  static UserPersistenceService get I =>
      globalProviderContainer.read(userPersistenceServiceProvider);

  bool recordPersistence = true;

  final ConnectivityService _connectivity;
  final AuthService _auth;
  final FirebaseDatabase _firebaseDatabase;

  late final StreamSubscription<bool> _connectivitySubscription;

  UserPersistenceService({
    required FirebaseDatabase firebaseDatabase,
    ConnectivityService? connectivityService,
    AuthService? auth,
  })  : _connectivity = connectivityService ?? ConnectivityService.I,
        _auth = auth ?? AuthService.I,
        _firebaseDatabase = firebaseDatabase {
    _connectivitySubscription =
        _connectivity.connectivityStream.listen(_onConnectivityChanged);
  }

  Future<void> _onConnectivityChanged(bool connected) async {
    if (connected) {
      await recordActive();
      await scheduleOnDisconnect();
    }
  }

  Future<void> scheduleOnDisconnect() async {
    if (recordPersistence && _auth.isSignedIn) {
      await _firebaseDatabase
          .ref()
          .child('Users/${_auth.currentUser!.uid}/lastSeen')
          .onDisconnect()
          .set(ServerValue.timestamp)
          .catchError((_) {});
    }
  }

  Future<void> recordActive() async {
    if (recordPersistence && _auth.isSignedIn) {
      await _firebaseDatabase
          .ref()
          .child('Users/${_auth.currentUser!.uid}/lastSeen')
          .set('Active');
    }
  }

  @mustCallSuper
  Future<void> dispose() async {
    await _connectivitySubscription.cancel();
  }
}
