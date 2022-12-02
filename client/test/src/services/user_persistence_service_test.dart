import 'package:church_admin/church_admin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

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
  tearDown(GetIt.I.reset);

  test(
    'Persistence Service => recordActive',
    () async {
      final unit = UserPersistenceService();
      addTearDown(unit.dispose);

      await unit.recordActive();

      final mockRef = GetIt.I<FirebaseDatabase>().ref();
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
      final unit = UserPersistenceService();
      addTearDown(unit.dispose);

      await unit.scheduleOnDisconnect();

      final mockRef = GetIt.I<FirebaseDatabase>().ref();
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
      when(GetIt.I<ConnectivityService>().connectivityStream)
          .thenAnswer((_) => Stream.value(true));

      final unit = UserPersistenceService();
      addTearDown(unit.dispose);

      await Future.delayed(Duration.zero);

      final mockRef = GetIt.I<FirebaseDatabase>().ref();
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
  await _setUpFirebaseDatabase();
  _setUpAuthService();
  _setUpConnectivityService();
}

Future<void> _setUpFirebaseDatabase() async {
  final mock = MockFirebaseDatabase();

  final mockDatabaseReference = await _setUpMockDBReference();

  when(mock.ref()).thenReturn(mockDatabaseReference);

  GetIt.I.registerSingleton<FirebaseDatabase>(mock);
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

void _setUpAuthService() {
  final mock = MockAuthService();

  when(mock.isSignedIn).thenReturn(true);
  when(mock.currentUser).thenReturn(User(uid: 'uid', name: 'name'));

  GetIt.I.registerSingleton<AuthService>(mock);
}

void _setUpConnectivityService() {
  final mock = MockConnectivityService();

  when(mock.connectivityStream).thenAnswer((_) => Stream.value(false));

  GetIt.I.registerSingleton<ConnectivityService>(mock);
}
