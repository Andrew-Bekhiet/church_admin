import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/repositories/database/graphql.graphql.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:churchdata_core_mocks/fakes/fake_cache_repo.dart';
import 'package:churchdata_core_mocks/fakes/fake_firebase_auth.dart';
import 'package:churchdata_core_mocks/fakes/mock_user.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, IdTokenResult;
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import 'auth_repository_test.mocks.dart';

@GenerateMocks([
  FirebaseDatabase,
  DatabaseEvent,
  DataSnapshot,
  DatabaseReference,
  OnDisconnect,
  CADatabaseRepository,
  NotificationsService,
  UsersQueries,
  GoogleSignIn,
])
void main() {
  group(
    'ChurchAdminAuthRepository tests:',
    () {
      setUp(
        () async {
          GetIt.I.registerSingleton<CacheRepository>(FakeCacheRepo());
          await GetIt.I<CacheRepository>().openBox('User');

          final mockNotificationsService = MockNotificationsService();
          when(mockNotificationsService.registerFCMToken())
              .thenAnswer((_) async => true);

          GetIt.I.registerSingleton<NotificationsService>(
              mockNotificationsService);

          final onDisconnect = MockOnDisconnect();
          when(onDisconnect.set(ServerValue.timestamp))
              .thenAnswer((_) async {});

          final databaseRef = MockDatabaseReference();
          when(databaseRef.child(captureAny)).thenReturn(databaseRef);
          when(databaseRef.onDisconnect()).thenReturn(onDisconnect);
          when(databaseRef.set(captureAny)).thenAnswer((_) async {});
          when(databaseRef.onValue).thenAnswer((_) => const Stream.empty());

          final database = MockFirebaseDatabase();
          when(database.ref()).thenReturn(databaseRef);

          GetIt.I.registerSingleton<FirebaseDatabase>(database);

          final usersQueries = MockUsersQueries();
          when(usersQueries.getUserInfoStream(uid: 'uid')).thenAnswer(
            (_) => Stream.value(
              FakeQueryResult(),
            ),
          );

          final mockGoogleSignIn = MockGoogleSignIn();
          when(mockGoogleSignIn.signOut()).thenAnswer((_) async {
            return null;
          });

          GetIt.I.registerSingleton<GoogleSignIn>(mockGoogleSignIn);

          final mockCADatabaseRepository = MockCADatabaseRepository();
          when(mockCADatabaseRepository.users).thenReturn(usersQueries);

          GetIt.I.registerSingleton<CADatabaseRepository>(
              mockCADatabaseRepository);
        },
      );
      tearDown(GetIt.I.reset);

      final connectionChangedVariant = ConnectionChangedVariant();

      testWidgets(
        'On Connection Changed',
        (tester) async {
          final snapshot = MockDataSnapshot();
          when(snapshot.value).thenReturn(
            connectionChangedVariant.currentValue!.connected,
          );
          final databaseEvent = MockDatabaseEvent();
          when(databaseEvent.snapshot).thenReturn(snapshot);

          final myMockUser = MyMockUser(
            uid: 'uid',
            email: 'email',
          );
          when(myMockUser.getIdTokenResult()).thenAnswer(
            (_) async => IdTokenResult(
              {
                'claims': {
                  'x-hasura-user-id': 'uid',
                },
                'token': '.' +
                    base64.encode(utf8.encode(json.encode({
                      'exp': (DateTime.now()
                              .add(const Duration(minutes: 3))
                              .millisecondsSinceEpoch) ~/
                          1000
                    })))
              },
            ),
          );
          when(myMockUser.getIdTokenResult(true)).thenAnswer(
            (_) async => IdTokenResult(
              {
                'claims': {
                  'x-hasura-user-id': 'uid',
                },
                'token': '.' +
                    base64.encode(utf8.encode(json.encode({
                      'exp': (DateTime.now()
                              .add(const Duration(minutes: 3))
                              .millisecondsSinceEpoch) ~/
                          1000
                    })))
              },
            ),
          );

          GetIt.I.registerSingleton<FirebaseAuth>(
            MockFirebaseAuth(
              mockUser: connectionChangedVariant.currentValue!.signedIn
                  ? myMockUser
                  : null,
            ),
          );

          if (connectionChangedVariant.currentValue!.scaffoldMounted) {
            await tester.pumpWidget(
              MaterialApp(
                scaffoldMessengerKey: scaffoldMessengerKey,
                home: Scaffold(
                  body: Container(),
                ),
              ),
            );
            tester.binding
                .handleAppLifecycleStateChanged(AppLifecycleState.resumed);
          }

          final unit = CAAuthRepository();
          GetIt.I.registerSingleton<CAAuthRepository>(unit, signalsReady: true);

          await tester.pumpAndSettle();

          expect(
            unit.connectionChanged(databaseEvent),
            connectionChangedVariant.currentValue!.connected,
          );

          await tester.pumpAndSettle();

          if (connectionChangedVariant.currentValue!.signedIn &&
              connectionChangedVariant.currentValue!.connected) {
            final lastSeen =
                GetIt.I<FirebaseDatabase>().ref().child('Users/uid/lastSeen');
            final onDisconnect = GetIt.I<FirebaseDatabase>()
                .ref()
                .child('Users/uid/lastSeen')
                .onDisconnect();

            verifyInOrder([
              onDisconnect.set(ServerValue.timestamp),
              lastSeen.set('Active'),
            ]);
          }

          if (connectionChangedVariant.currentValue!.signedIn &&
              connectionChangedVariant.currentValue!.scaffoldMounted) {
            if (connectionChangedVariant.currentValue!.connected) {
              expect(find.text('تم استرجاع الاتصال بالانترنت'), findsOneWidget);
            } else {
              expect(find.text('لا يوجد اتصال بالانترنت!'), findsOneWidget);
            }
          }

          await GetIt.I<FirebaseAuth>().signOut();
          await tester.pump(const Duration(minutes: 2));
        },
        variant: connectionChangedVariant,
      );

      test(
        'Refresh Id Token',
        () async {
          final exp = (DateTime.now().millisecondsSinceEpoch + 600000) ~/ 1000;
          final idTokenResult = {
            'token': 'header.' +
                base64.encode(utf8.encode(json.encode({'exp': exp}))) +
                '.signature',
            'claims': {'x-hasura-user-id': 'uid'}
          };
          final expectedIdTokenResult = {
            '_idToken': 'header.' +
                base64.encode(utf8.encode(json.encode({'exp': exp}))) +
                '.signature',
            'x-hasura-user-id': 'uid'
          };

          final myMockUser = MyMockUser(
            uid: 'uid',
            email: 'email',
          );
          when(myMockUser.getIdTokenResult()).thenAnswer(
            (_) async => IdTokenResult(
              idTokenResult,
            ),
          );

          GetIt.I.registerSingleton<FirebaseAuth>(
            MockFirebaseAuth(
              mockUser: myMockUser,
            ),
          );

          final unit = CAAuthRepository();
          GetIt.I.registerSingleton<CAAuthRepository>(unit, signalsReady: true);

          await unit.refreshIdToken(myMockUser);

          expect(
            const DeepCollectionEquality.unordered().equals(
              GetIt.I<CacheRepository>().box('User').toMap(),
              expectedIdTokenResult,
            ),
            isTrue,
          );

          final child =
              GetIt.I<FirebaseDatabase>().ref().child('Users/uid/forceRefresh');
          verify(
            child.set(false),
          );

          expect(unit.idTokenStream, emits(expectedIdTokenResult['_idToken']));

          final child2 =
              GetIt.I<FirebaseDatabase>().ref().child('.info/connected');
          verify(
            child2.onValue,
          );
          final users = CADatabaseRepository.I.users;
          verify(users.getUserInfoStream(uid: 'uid'));

          expect(
            unit.userStream,
            emits(
              predicate<User>(
                (u) {
                  return u.firebaseAuthUID == 'uid' &&
                      u.email == 'email' &&
                      u.password == null &&
                      u.permissions.permissions.isEmpty;
                },
              ),
            ),
          );
        },
      );
    },
  );
}

class ConnectionChangedVariant extends ValueVariant<ConnectionChangedValue> {
  ConnectionChangedVariant()
      : super({
          ConnectionChangedValue(
            connected: false,
            scaffoldMounted: false,
            signedIn: false,
          ),
          ConnectionChangedValue(
            connected: false,
            scaffoldMounted: true,
            signedIn: true,
          ),
          ConnectionChangedValue(
            connected: false,
            scaffoldMounted: true,
            signedIn: false,
          ),
          ConnectionChangedValue(
            connected: false,
            scaffoldMounted: false,
            signedIn: true,
          ),
          ConnectionChangedValue(
            connected: true,
            scaffoldMounted: false,
            signedIn: false,
          ),
          ConnectionChangedValue(
            connected: true,
            scaffoldMounted: true,
            signedIn: false,
          ),
          ConnectionChangedValue(
            connected: true,
            scaffoldMounted: false,
            signedIn: true,
          ),
          ConnectionChangedValue(
            connected: true,
            scaffoldMounted: true,
            signedIn: true,
          ),
        });

  @override
  Future<ConnectionChangedValue> setUp(ConnectionChangedValue value) async {
    await super.setUp(value);

    return value;
  }
}

class ConnectionChangedValue {
  final bool connected;
  final bool signedIn;
  final bool scaffoldMounted;

  ConnectionChangedValue({
    required this.connected,
    required this.signedIn,
    required this.scaffoldMounted,
  });

  @override
  String toString() {
    return 'connected: $connected, signedIn: $signedIn, scaffoldMounted: $scaffoldMounted';
  }
}

class FakeQueryResult
    extends QueryResult<GetUserInfoStream$SubscriptionRoot$Users> {
  FakeQueryResult()
      : super.internal(
          parserFn: GetUserInfoStream$SubscriptionRoot$Users.fromJson,
          source: QueryResultSource.network,
        );

  @override
  GetUserInfoStream$SubscriptionRoot$Users? get parsedData =>
      GetUserInfoStream$SubscriptionRoot$Users()
        ..uid = const Uuid().v4obj()
        ..firebaseAuthUid = 'uid'
        ..email = 'email'
        ..permissions = [];
}
