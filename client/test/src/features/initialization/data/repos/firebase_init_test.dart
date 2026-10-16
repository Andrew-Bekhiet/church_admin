import 'package:church_admin/church_admin.dart';
import 'package:church_admin/default_firebase_options.dart';
import 'package:firebase_app_check_platform_interface/firebase_app_check_platform_interface.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(DefaultFirebaseOptions.currentPlatform);
    registerFallbackValue(FakeFirebaseApp());
  });
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'FirebaseInit',
    () async {
      const unit = FirebaseInit();

      await unit.initialize();

      verifyInOrder([
        () => FirebasePlatform.instance.initializeApp(
          name: any(named: 'name'),
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        () => FirebaseAppCheckPlatform.instance.activate(
          providerWeb: any(named: 'providerWeb'),
          providerAndroid: any(named: 'providerAndroid'),
          providerApple: any(named: 'providerApple'),
          providerWindows: any(named: 'providerWindows'),
        ),
        () => FirebaseMessagingPlatform.onBackgroundMessage =
            NotificationsServiceCallbacks.onBackgroundMessageReceived,
      ]);
    },
  );
}

void _setUp() {
  _setUpMockFirebaseCore();
  _setUpMockFirebaseAppCheck();
  _setUpMockFirebaseAuth();
  _setUpMockFirebaseMessaging();
}

void _setUpMockFirebaseCore() {
  final mock = MockFirebasePlatform();
  final app = FakeFirebaseAppPlatform();

  when(
    () => mock.initializeApp(
      name: any(named: 'name'),
      options: any(named: 'options'),
    ),
  ).thenAnswer((_) async => app);
  when(() => mock.app(any())).thenReturn(app);

  FirebasePlatform.instance = mock;
}

void _setUpMockFirebaseAppCheck() {
  final mock = MockFirebaseAppCheckPlatform();
  when(
    () => mock.activate(
      providerWeb: any(named: 'providerWeb'),
      providerAndroid: any(named: 'providerAndroid'),
      providerApple: any(named: 'providerApple'),
      providerWindows: any(named: 'providerWindows'),
    ),
  ).thenAnswer((_) async {
    return;
  });
  when(
    () => mock.setTokenAutoRefreshEnabled(any()),
  ).thenAnswer((_) async {
    return;
  });

  FirebaseAppCheckPlatform.instance = mock;
}

void _setUpMockFirebaseAuth() {
  final mock = MockFirebaseAuthPlatform();
  when(
    () =>
        mock.setSettings(forceRecaptchaFlow: any(named: 'forceRecaptchaFlow')),
  ).thenAnswer((_) async {
    return;
  });

  FirebaseAuthPlatform.instance = mock;
}

void _setUpMockFirebaseMessaging() {
  final mock = MockFirebaseMessagingPlatform();
  when(
    () => mock.registerBackgroundMessageHandler(any()),
  ).thenAnswer((_) async {
    return;
  });

  FirebaseMessagingPlatform.instance = mock;
}

class MockFirebasePlatform extends Mock
    with MockPlatformInterfaceMixin
    implements FirebasePlatform {}

class FakeFirebaseAppPlatform extends FirebaseAppPlatform
    with MockPlatformInterfaceMixin {
  FakeFirebaseAppPlatform() : super('', DefaultFirebaseOptions.currentPlatform);
}

class MockFirebaseAppCheckPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements FirebaseAppCheckPlatform {
  MockFirebaseAppCheckPlatform() {
    when(() => delegateFor(app: any(named: 'app'))).thenReturn(this);
    when(setInitialValues).thenReturn(this);
  }
}

class MockFirebaseMessagingPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements FirebaseMessagingPlatform {
  MockFirebaseMessagingPlatform() {
    when(() => delegateFor(app: any(named: 'app'))).thenReturn(this);
    when(setInitialValues).thenReturn(this);
  }
}

class MockFirebaseAuthPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements FirebaseAuthPlatform {
  MockFirebaseAuthPlatform() {
    when(() => delegateFor(app: any(named: 'app'))).thenReturn(this);
    when(setInitialValues).thenReturn(this);
  }
}

// ignore: avoid_implementing_value_types, FirebaseApp has a private constructor so it cannot be extended; the fake is only a fallback value and never compared
class FakeFirebaseApp extends Fake implements FirebaseApp {}
