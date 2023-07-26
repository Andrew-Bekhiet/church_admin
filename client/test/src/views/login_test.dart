// ignore_for_file: discarded_futures

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Family;
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import 'login_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthService>(),
  MockSpec<AuthCache>(),
  MockSpec<ConnectivityService>(),
  MockSpec<DatabaseService>(),
  MockSpec<UserSettingsService>(),
  MockSpec<HiveInterface>(),
  MockSpec<NotificationsService>()
])
void main() {
  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Login Screen => Key elements',
    (tester) async {
      await tester.pumpWidgetBuilder(
        const LoginScreen(),
        wrapper: materialAppWrapper(),
      );

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

      final overrides = [
        _setUpNotificationsService(),
        _setUpUserSettings(),
        _setUpAuthService(),
      ];

      initGlobalProviderContainer(overrides);

      await tester.pumpWidgetBuilder(
        const LoginScreen(),
        wrapper: materialAppWrapper(),
      );

      expect(find.bySubtype<FilledButton>(), findsOneWidget);

      await tester.tap(find.bySubtype<FilledButton>());

      verify(
        AuthService.I
            .signInWithEmailPassword(email: 'email', password: 'password'),
      );
    },
  );

  group(
    'Login Screen => Route =>',
    () {
      test(
        'No Signed In User',
        () async {
          final overrides = [_setUpAuthService(isSignedIn: false)];

          initGlobalProviderContainer(overrides);

          expect(
            LoginScreen.redirect(),
            null,
          );
        },
      );

      test(
        'Signed In User',
        () async {
          final overrides = [_setUpAuthService()];

          initGlobalProviderContainer(overrides);

          expect(
            LoginScreen.redirect(),
            '/',
          );
        },
      );
    },
  );
}

Override _setUpUserSettings() {
  final userSettings = MockUserSettingsService();
  when(userSettings.setSecondLineFor(Area, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Street, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Family, captureAny))
      .thenAnswer((_) async {});
  when(userSettings.setSecondLineFor(Person, captureAny))
      .thenAnswer((_) async {});

  return userSettingsServiceProvider.overrideWithValue(userSettings);
}

Override _setUpAuthService({bool isSignedIn = true}) {
  final authRepo = MockAuthService();
  if (isSignedIn) {
    final user = User(
      uid: 'uid',
      name: '',
      permissions: PermissionsSet.fromSet(const {}),
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

  return authServiceProvider.overrideWithValue(authRepo);
}

Override _setUpNotificationsService() {
  final notifications = MockNotificationsService();

  return notificationsServiceProvider.overrideWithValue(notifications);
}
