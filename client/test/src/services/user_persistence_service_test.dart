import 'package:church_admin/church_admin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

import 'user_persistence_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ConnectivityService>(),
  MockSpec<AuthService>(),
  MockSpec<FirebaseDatabase>(),
  MockSpec<DatabaseReference>(),
  MockSpec<OnDisconnect>(),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'Persistence Service => recordActive',
    () async {
      final unit = UserPersistenceService(
        firebaseDatabase:
            globalProviderContainer.read(firebaseDatabaseProvider),
      );
      addTearDown(unit.dispose);

      await unit.recordActive();

      final mockRef =
          globalProviderContainer.read(firebaseDatabaseProvider).ref();
      verifyInOrder(
        [
          mockRef.child('Users/uid/lastSeen'),
          mockRef.set('Active'),
        ],
      );
    },
  );

  test(
    'Persistence Service => scheduleOnDisconnect',
    () async {
      final unit = UserPersistenceService(
        firebaseDatabase:
            globalProviderContainer.read(firebaseDatabaseProvider),
      );
      addTearDown(unit.dispose);

      await unit.scheduleOnDisconnect();

      final mockRef =
          globalProviderContainer.read(firebaseDatabaseProvider).ref();
      verifyInOrder(
        [
          mockRef.child('Users/uid/lastSeen'),
          mockRef.onDisconnect(),
        ],
      );

      final mockOnDisconnect = mockRef.onDisconnect();
      verify(mockOnDisconnect.set(ServerValue.timestamp));
    },
  );

  test(
    'Persistence Service => connectivity listener',
    () async {
      when(ConnectivityService.I.connectivityStream)
          .thenAnswer((_) => BehaviorSubject.seeded(true));

      final unit = UserPersistenceService(
        firebaseDatabase:
            globalProviderContainer.read(firebaseDatabaseProvider),
      );
      addTearDown(unit.dispose);

      await Future.delayed(Duration.zero);

      final mockRef =
          globalProviderContainer.read(firebaseDatabaseProvider).ref();
      verifyInOrder(
        [
          mockRef.child('Users/uid/lastSeen'),
          mockRef.set('Active'),
          mockRef.onDisconnect(),
        ],
      );

      final mockOnDisconnect = mockRef.onDisconnect();
      verify(mockOnDisconnect.set(ServerValue.timestamp));
    },
  );
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpFirebaseDatabase(),
    _setUpAuthService(),
    _setUpConnectivityService(),
  ];

  initGlobalProviderContainer(overrides);
}

Future<Override> _setUpFirebaseDatabase() async {
  final mock = MockFirebaseDatabase();

  final mockDatabaseReference = await _setUpMockDBReference();

  when(mock.ref()).thenReturn(mockDatabaseReference);

  return firebaseDatabaseProvider.overrideWithValue(mock);
}

Future<MockDatabaseReference> _setUpMockDBReference() async {
  final mockDatabaseReference = MockDatabaseReference();

  final mockOnDisconnect = await _setUpMockOnDisconnect();

  when(mockDatabaseReference.onDisconnect()).thenReturn(mockOnDisconnect);
  when(mockDatabaseReference.child(any)).thenReturn(mockDatabaseReference);
  when(mockDatabaseReference.set(any)).thenAnswer((_) async {});

  return mockDatabaseReference;
}

Future<MockOnDisconnect> _setUpMockOnDisconnect() async {
  final mock = MockOnDisconnect();

  when(mock.set(any)).thenAnswer((_) async {});

  return mock;
}

Override _setUpAuthService() {
  final mock = MockAuthService();

  when(mock.isSignedIn).thenReturn(true);
  when(mock.currentUser).thenReturn(User(uid: 'uid', name: 'name'));

  return authServiceProvider.overrideWithValue(mock);
}

Override _setUpConnectivityService() {
  final mock = MockConnectivityService();

  when(mock.connectivityStream)
      .thenAnswer((_) => ValueStreamController(false).stream);

  return connectivityServiceProvider.overrideWithValue(mock);
}
