// ignore_for_file: discarded_futures

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:churchdata_core_mocks/fakes/fake_cache_repo.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import '../dummy_named_location.dart';
import 'login_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthService>(),
  MockSpec<AuthCache>(),
  MockSpec<ConnectivityService>(),
  MockSpec<DatabaseService>(),
  MockSpec<DummyNamedLocation>(),
  MockSpec<UserSettingsService>(),
  MockSpec<CacheRepository>(),
  MockSpec<CANotificationsService>()
])
void main() {
  tearDown(GetIt.I.reset);

  testWidgets(
    'Login Screen => Key elements',
    (tester) async {
      await tester.pumpWidget(wrapWithMaterialApp(const LoginScreen()));

      expect(find.text('كنيسة السيدة العذراء مريم'), findsOneWidget);

      expect(
        find.image(const AssetImage('assets/Logo.png')),
        findsOneWidget,
      );

      expect(find.bySubtype<FilledButton>(), findsOneWidget);
      expect(
        find.descendant(
          of: find.bySubtype<FilledButton>(),
          matching: find.image(
            const AssetImage('assets/google_logo.png'),
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.bySubtype<FilledButton>(),
          matching: find.text('تسجيل الدخول بجوجل'),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Login Screen => Can login with Google',
    (tester) async {
      // final googleSignInResult = _setUpGoogleSignIn();
      // final googleSignIn = googleSignInResult.item1;
      // final account = googleSignInResult.item2;

      // final firebaseAuth = _setUpFirebaseAuth();

      _setUpNotificationsService();

      _setUpUserSettings();

      await _setUpCacheRepo();

      _setUpAuthService();

      await tester.pumpWidget(wrapWithMaterialApp(const LoginScreen()));

      expect(find.bySubtype<FilledButton>(), findsOneWidget);

      await tester.tap(find.bySubtype<FilledButton>());

      verify(GetIt.I<AuthService>().signInWithGoogle());
    },
  );

  group(
    'Login Screen => Route =>',
    () {
      test(
        'No Signed In User',
        () async {
          _setUpAuthService(isSignedIn: false);

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

          expect(
            LoginScreen.redirect(),
            null,
          );
        },
      );

      test(
        'Signed In User',
        () async {
          _setUpAuthService();

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

          expect(
            LoginScreen.redirect(),
            '/',
          );
        },
      );
    },
  );
}

Future<void> _setUpCacheRepo({bool mock = true}) async {
  final cacheRepository = mock ? MockCacheRepository() : FakeCacheRepo();

  if (mock) {
    when((cacheRepository as MockCacheRepository).openBox(captureAny))
        .thenAnswer((_) async => Box<NotificationSetting>('name'));
  } else {
    await cacheRepository.openBox('User');
  }
  GetIt.I.registerSingleton<CacheRepository>(cacheRepository);
}

void _setUpUserSettings() {
  final userSettings = MockUserSettingsService();
  when(userSettings.setSecondLineFor(Area, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Street, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Family, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Person, captureAny))
      .thenAnswer((_) async {});

  GetIt.I.registerSingleton<UserSettingsService>(userSettings);
}

void _setUpAuthService({bool mock = true, bool isSignedIn = true}) {
  final authRepo = mock
      ? MockAuthService()
      : AuthService(
          cache: MockAuthCache(),
          adapter: FirebaseAuthAdapter(
            databaseRepository: MockDatabaseService(),
          ),
          connectivityService: MockConnectivityService(),
        );
  if (mock) {
    if (isSignedIn) {
      final user = User(
        uid: 'uid',
        name: '',
        password: '',
        permissions: CAPermissionsSet.fromSet(const {}),
        email: 'email',
        authId: 'firebaseAuthUID',
      );
      when(authRepo.userStream).thenAnswer(
        (_) => BehaviorSubject.seeded(
          user,
        ),
      );
      when(authRepo.currentUser).thenReturn(
        user,
      );
    }
    when(authRepo.isSignedIn).thenReturn(isSignedIn);
  }
  GetIt.I.registerSingleton<AuthService>(authRepo, signalsReady: !mock);
}

void _setUpNotificationsService() {
  final notifications = MockCANotificationsService();
  when(
    notifications.schedulePeriodic(
      any,
      any,
      any,
      startAt: anyNamed('startAt'),
      allowWhileIdle: anyNamed('allowWhileIdle'),
      exact: anyNamed('exact'),
      rescheduleOnReboot: anyNamed('rescheduleOnReboot'),
      wakeup: anyNamed('wakeup'),
    ),
  ).thenAnswer((_) async => true);
  GetIt.I.registerSingleton<CANotificationsService>(notifications);
}
