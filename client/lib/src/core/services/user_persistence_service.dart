import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

class UserPersistenceService {
  static UserPersistenceService get I =>
      globalProviderContainer.read(userPersistenceServiceProvider);

  bool recordPersistence = true;

  final ConnectivityService _connectivity;
  final AuthBloc _auth;
  final FirebaseDatabase _firebaseDatabase;

  late final StreamSubscription<bool> _connectivitySubscription;

  UserPersistenceService({
    required FirebaseDatabase firebaseDatabase,
    ConnectivityService? connectivityService,
    AuthBloc? auth,
  }) : _connectivity = connectivityService ?? ConnectivityService.I,
       _auth = auth ?? AuthBloc.I,
       _firebaseDatabase = firebaseDatabase {
    _connectivitySubscription = _connectivity.connectivityStream.listen(
      _onConnectivityChanged,
    );
  }

  bool get canRecordPersistence =>
      recordPersistence && _auth.currentUserData != null;

  Future<void> _onConnectivityChanged(bool connected) async {
    if (!connected) return;

    await recordActive();
  }

  Future<void> scheduleOnDisconnect() async {
    if (!canRecordPersistence) return;

    await _firebaseDatabase
        .ref()
        .child('Users/${_auth.currentUserData!.uid}/lastSeen')
        .onDisconnect()
        .set(ServerValue.timestamp)
        .catchError((_) {});
  }

  Future<void> cancelOnDisconnect() async {
    await _firebaseDatabase
        .ref()
        .child('Users/${_auth.currentUserData!.uid}/lastSeen')
        .onDisconnect()
        .cancel();
  }

  Future<void> recordActive() async {
    if (!canRecordPersistence) return;

    await _firebaseDatabase
        .ref()
        .child('Users/${_auth.currentUserData!.uid}/lastSeen')
        .set('Active');
    await scheduleOnDisconnect();
  }

  Future<void> recordLastSeen() async {
    if (!canRecordPersistence) return;

    await _firebaseDatabase
        .ref()
        .child('Users/${_auth.currentUserData!.uid}/lastSeen')
        .set(ServerValue.timestamp);
    await cancelOnDisconnect();
  }

  @mustCallSuper
  Future<void> dispose() async {
    await _connectivitySubscription.cancel();
  }
}
