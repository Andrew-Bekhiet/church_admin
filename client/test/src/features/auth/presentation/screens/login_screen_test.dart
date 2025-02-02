// ignore_for_file: discarded_futures

import 'dart:async';

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

import '../../../../utils.dart';
import 'login_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
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
  setUp(() => provideDummy<AuthState>(const AuthUnauthenticated()));

  tearDown(defaultTearDown);

  testWidgets(
    'Login Screen => Key elements',
    (tester) async {
      final overrides = [
        _setUpAuthBloc(),
        _setUpAuthStorage(),
      ];

      initGlobalProviderContainer(overrides);

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
        _setUpAuthBloc(),
        _setUpAuthStorage(),
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
        AuthBloc.I.add(
          const SignInWithEmailPassword(
            email: 'email@example.com',
            password: 'password',
          ),
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
          final overrides = [
            _setUpAuthBloc(isSignedIn: false),
            _setUpAuthStorage(),
          ];

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
          final overrides = [
            _setUpAuthBloc(),
            _setUpAuthStorage(),
          ];

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

Override _setUpAuthStorage() {
  final mock = MockAuthStorage();
  when(mock.getPasswordHash()).thenAnswer((_) async => 'hash-password1234');

  return authStorageProvider.overrideWithValue(mock);
}

Override _setUpAuthBloc({bool isSignedIn = true}) {
  final authBloc = MockAuthBloc();
  final streamController = StreamController<AuthState>();

  if (isSignedIn) {
    const user = AuthUser(
      uid: 'uid',
      email: 'email',
      emailVerified: true,
      idToken: 'token',
      claims: {},
    );
    when(authBloc.userStream).thenAnswer(
      (_) => BehaviorSubject.seeded(
        user,
      ),
    );
    when(authBloc.currentUser).thenReturn(
      user,
    );

    when(authBloc.state).thenReturn(const AuthAuthenticated(authUser: user));
  }

  when(authBloc.isSignedIn).thenReturn(isSignedIn);
  when(
    authBloc.add(
      const SignInWithEmailPassword(
        email: 'email@example.com',
        password: 'password',
      ),
    ),
  ).thenAnswer((_) {
    streamController.add(
      const AuthAuthenticated(
        authUser: AuthUser(
          uid: 'uid',
          email: 'email',
          emailVerified: true,
          idToken: 'token',
          claims: {},
        ),
      ),
    );
  });

  return authBlocProvider.overrideWith((ref) {
    ref.onDispose(streamController.close);

    return authBloc;
  });
}

Override _setUpNotificationsService() {
  final notifications = MockNotificationsService();

  return notificationsServiceProvider.overrideWithValue(notifications);
}
