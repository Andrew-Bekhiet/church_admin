// ignore_for_file: discarded_futures

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart' hide Family;
import 'package:rxdart/rxdart.dart';

import 'login_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthService>(),
  MockSpec<AuthStorage>(),
  MockSpec<ConnectivityService>(),
  MockSpec<DatabaseService>(),
  MockSpec<UserSettingsService>(),
  MockSpec<HiveInterface>(),
  MockSpec<NotificationsService>(),
  MockSpec<BuildContext>(),
  MockSpec<GoRouterState>(),
])
void main() {
  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Login Screen => Key elements',
    (tester) async {
      tester.view.physicalSize = const Size(800, 1400 * 4);

      await tester.pumpWidgetBuilder(
        const LoginScreen(),
        wrapper: materialAppWrapper(),
      );

      expect(find.text('كنيسة السيدة العذراء مريم'), findsOneWidget);

      expect(
        find.image(const AssetImage('assets/Logo.png')),
        findsOneWidget,
      );

      expect(find.byType(TextField), findsNWidgets(2));
      expect(
        find.widgetWithText(FilledButton, 'تسجيل الدخول'),
        findsOneWidget,
      );
      expect(find.widgetWithText(InkWell, 'إنشاء حساب جديد'), findsOneWidget);

      await tester.scrollUntilVisible(
        find.widgetWithText(FilledButton, 'تسجيل الدخول'),
        20,
        scrollable: find.byType(Scrollable).first,
      );

      await tester.tap(find.widgetWithText(InkWell, 'إنشاء حساب جديد'));
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsNWidgets(3));
      expect(
        find.widgetWithText(FilledButton, 'إنشاء حساب جديد'),
        findsOneWidget,
      );
      expect(find.widgetWithText(InkWell, 'تسجيل الدخول'), findsOneWidget);

      await tester.scrollUntilVisible(
        find.widgetWithText(FilledButton, 'إنشاء حساب جديد'),
        20,
        scrollable: find.byType(Scrollable).first,
      );

      await tester.tap(find.widgetWithText(InkWell, 'تسجيل الدخول'));
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsNWidgets(2));
      expect(
        find.widgetWithText(FilledButton, 'تسجيل الدخول'),
        findsOneWidget,
      );
      expect(find.textContaining('إنشاء حساب جديد'), findsOneWidget);
    },
  );

  testWidgets(
    'Login Screen => Can login with Email and Password',
    (tester) async {
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
      await tester.enterText(find.byType(TextField).first, 'email@example.com');
      await tester.enterText(find.byType(TextField).last, 'password');

      expect(find.bySubtype<FilledButton>(), findsOneWidget);

      await tester.scrollUntilVisible(
        find.widgetWithText(FilledButton, 'تسجيل الدخول'),
        20,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.tap(
        find.widgetWithText(FilledButton, 'تسجيل الدخول'),
      );

      verify(
        AuthService.I.signInWithEmailPassword(
          email: 'email@example.com',
          password: 'password',
        ),
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
            const LoginRoute()
                .redirect(MockBuildContext(), MockGoRouterState()),
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
            const LoginRoute()
                .redirect(MockBuildContext(), MockGoRouterState()),
            '/',
          );
        },
      );
    },
  );
}

Override _setUpUserSettings() {
  final userSettings = MockUserSettingsService();
  when(
    userSettings.setSecondLineFor(
      type: Area,
      value: captureAnyNamed('value'),
    ),
  ).thenAnswer((_) async {
    return;
  });
  when(
    userSettings.setSecondLineFor(
      type: Street,
      value: captureAnyNamed('value'),
    ),
  ).thenAnswer((_) async {
    return;
  });
  when(
    userSettings.setSecondLineFor(
      type: Family,
      value: captureAnyNamed('value'),
    ),
  ).thenAnswer((_) async {
    return;
  });
  when(
    userSettings.setSecondLineFor(
      type: Person,
      value: captureAnyNamed('value'),
    ),
  ).thenAnswer((_) async {
    return;
  });

  return userSettingsServiceProvider.overrideWithValue(userSettings);
}

Override _setUpAuthService({bool isSignedIn = true}) {
  final authRepo = MockAuthService();
  if (isSignedIn) {
    final user = User(
      uid: 'uid',
      name: '',
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
  when(
    authRepo.signInWithEmailPassword(
      email: 'email@example.com',
      password: 'password',
    ),
  ).thenAnswer((_) async => true);

  return authServiceProvider.overrideWithValue(authRepo);
}

Override _setUpNotificationsService() {
  final notifications = MockNotificationsService();

  return notificationsServiceProvider.overrideWithValue(notifications);
}
