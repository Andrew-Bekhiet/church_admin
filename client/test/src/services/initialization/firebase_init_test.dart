import 'package:church_admin/church_admin.dart';
import 'package:church_admin/firebase_options.dart';
import 'package:firebase_app_check_platform_interface/firebase_app_check_platform_interface.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:riverpod/riverpod.dart';

import 'firebase_init_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HiveInterface>(),
  MockSpec<Box>(),
  MockSpec<FirebasePlatform>(as: #FirebasePlatform_),
  MockSpec<FirebaseAppPlatform>(as: #MockFirebaseAppPlatform_),
  MockSpec<FirebaseAppCheckPlatform>(as: #FirebaseAppCheckPlatform_),
  MockSpec<FirebaseMessagingPlatform>(as: #FirebaseMessagingPlatform_),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'FirebaseInit',
    () async {
      const unit = FirebaseInit();

      await unit.initialize();

      verifyInOrder([
        FirebasePlatform.instance.initializeApp(
          name: anyNamed('name'),
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        FirebaseAppCheckPlatform.instance.activate(
          webProvider: anyNamed('webProvider'),
          androidProvider: anyNamed('androidProvider'),
          appleProvider: anyNamed('appleProvider'),
        ),
        FirebaseMessagingPlatform.onBackgroundMessage =
            NotificationsServiceCallbacks.onBackgroundMessageReceived,
      ]);
    },
  );
}

void _setUp() {
  _setUpMockFirebaseCore();
  _setUpMockFirebaseAppCheck();
  _setUpMockFirebaseMessaging();

  initGlobalProviderContainer([_setUpMockHive()]);
}

void _setUpMockFirebaseCore() {
  final mock = MockFirebasePlatform();

  when(
    mock.initializeApp(
      name: anyNamed('name'),
      options: anyNamed('options'),
    ),
  ).thenAnswer((_) async => MockFirebaseAppPlatform());
  when(mock.app(any)).thenReturn(MockFirebaseAppPlatform());

  FirebasePlatform.instance = mock;
}

void _setUpMockFirebaseAppCheck() {
  final mock = MockFirebaseAppCheckPlatform();
  when(
    mock.activate(
      webProvider: anyNamed('webProvider'),
      androidProvider: anyNamed('androidProvider'),
      appleProvider: anyNamed('appleProvider'),
    ),
  ).thenAnswer((_) async {});

  when(mock.delegateFor(app: anyNamed('app'))).thenReturn(mock);
  when(mock.setInitialValues()).thenReturn(mock);

  FirebaseAppCheckPlatform.instance = mock;
}

void _setUpMockFirebaseMessaging() {
  final mock = MockFirebaseMessagingPlatform();
  when(
    mock.registerBackgroundMessageHandler(any),
  ).thenAnswer((_) async {});

  when(mock.delegateFor(app: anyNamed('app'))).thenReturn(mock);
  when(mock.setInitialValues()).thenReturn(mock);

  FirebaseMessagingPlatform.instance = mock;
}

Override _setUpMockHive() {
  final mockHiveInterface = MockHiveInterface();

  when(
    mockHiveInterface.openBox<Map?>(
      any,
      encryptionCipher: anyNamed('encryptionCipher'),
    ),
  ).thenAnswer((_) async => MockBox<Map?>());

  final overrideWithValue = hiveProvider.overrideWithValue(mockHiveInterface);
  return overrideWithValue;
}

class MockFirebasePlatform extends FirebasePlatform_
    with MockPlatformInterfaceMixin {}

class MockFirebaseAppPlatform extends MockFirebaseAppPlatform_
    with MockPlatformInterfaceMixin {}

class MockFirebaseAppCheckPlatform extends FirebaseAppCheckPlatform_
    with MockPlatformInterfaceMixin {}

class MockFirebaseMessagingPlatform extends FirebaseMessagingPlatform_
    with MockPlatformInterfaceMixin {}
