// ignore_for_file: discarded_futures

import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart' hide loadAppFonts;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart' hide Family;
import 'package:rxdart/rxdart.dart';
import 'package:spot/spot.dart';

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
  MockSpec<LoggingService>(),
])
void main() {
  loadAppFonts();

  setUp(() => provideDummy<AuthState>(const AuthUnauthenticated()));

  tearDown(defaultTearDown);

  group('Login Screen =>', () {
    testGoldens(
      'UI',
      (tester) async {
        final overrides = [
          _setUpAuthBloc(),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        final builder = DeviceBuilder(
          wrap: materialAppWithThemeAndLocale(),
        )
          ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
          ..addScenario(
            widget: const LoginScreen(),
            name: 'login_screen',
          )
          ..addScenario(
            widget: const LoginScreen(),
            name: 'login_screen_signup',
            onCreate: (key) async {
              await act.dragUntilVisible(
                dragTarget: spotKey(
                  LoginScreenKeys.switchLoginSignupButtonKey,
                  parents: [spotKey(key)],
                ),
                dragStart: spotKey(
                  LoginScreenKeys.emailFieldKey,
                  parents: [spotKey(key)],
                ),
                moveStep: const Offset(0, -100),
              );

              await act.tap(
                spotKey(
                  LoginScreenKeys.switchLoginSignupButtonKey,
                  parents: [spotKey(key)],
                ),
              );
            },
          );

        await tester.pumpDeviceBuilder(
          builder,
          wrapper: materialAppWrapper(),
        );

        await screenMatchesGolden(tester, 'login_screen');
      },
    );

    testWidgets(
      'Can login with Email and Password',
      (tester) async {
        final overrides = [
          _setUpNotificationsService(),
          _setUpAuthBloc(isSignedIn: false),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        await tester.pumpWidgetBuilder(
          const LoginScreen(),
          wrapper: materialAppWrapper(),
        );
        await act.enterText(
          spotKey(LoginScreenKeys.emailFieldKey),
          'email@example.com',
        );
        await act.enterText(
          spotKey(LoginScreenKeys.passwordFieldKey),
          'password',
        );

        spotKey(LoginScreenKeys.loginSignupButtonKey).existsOnce();

        await act.dragUntilVisible(
          dragTarget: spotKey(LoginScreenKeys.loginSignupButtonKey),
          dragStart: spot<Scrollable>().first(),
          moveStep: const Offset(0, -150),
        );
        await act.tap(spotKey(LoginScreenKeys.loginSignupButtonKey));

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

    testWidgets(
      'Can signup with Email and Password',
      (tester) async {
        final overrides = [
          _setUpNotificationsService(),
          _setUpAuthBloc(isSignedIn: false),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        await tester.pumpWidgetBuilder(
          const LoginScreen(),
          wrapper: materialAppWrapper(),
        );

        await act.dragUntilVisible(
          dragTarget: spotKey(LoginScreenKeys.switchLoginSignupButtonKey),
          dragStart: spot<Scrollable>().first(),
          moveStep: const Offset(0, -150),
        );
        await act.tap(
          spotKey(LoginScreenKeys.switchLoginSignupButtonKey),
        );

        await act.enterText(
          spotKey(LoginScreenKeys.emailFieldKey),
          'email@example.com',
        );
        await act.enterText(
          spotKey(LoginScreenKeys.passwordFieldKey),
          r'1StrongPa$sword',
        );
        await act.enterText(
          spotKey(LoginScreenKeys.passwordConfirmationFieldKey),
          r'1StrongPa$sword',
        );

        await act.tap(spotKey(LoginScreenKeys.loginSignupButtonKey));

        verify(
          AuthBloc.I.add(
            const SignUpWithEmailPassword(
              email: 'email@example.com',
              password: r'1StrongPa$sword',
            ),
          ),
        );
      },
    );

    testWidgets(
      'Forgot Password',
      (tester) async {
        final overrides = [
          _setUpAuthBloc(isSignedIn: false),
          _setUpAuthStorage(),
          _setUpGoRouterRefreshStream(),
          _setUpLoggingService(),
        ];

        initGlobalProviderContainer(overrides);

        await tester.pumpWidgetBuilder(
          MaterialApp.router(
            routerConfig: $appRouter,
          ),
        );

        await act.dragUntilVisible(
          dragTarget: spotKey(LoginScreenKeys.forgotPasswordButtonKey),
          dragStart: spot<Scrollable>().first(),
          moveStep: const Offset(0, -150),
        );

        await act.tap(
          spotKey(LoginScreenKeys.forgotPasswordButtonKey),
        );

        await tester.pumpAndSettle();

        spot<ForgotPasswordScreen>().existsOnce();
      },
    );
    group(
      'Route =>',
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
              const HomeScreenRoute().location,
            );
          },
        );
      },
    );
  });
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

Override _setUpGoRouterRefreshStream() {
  return goRouterRefreshStreamProvider.overrideWithValue(
    GoRouterRefreshStream(const Stream<void>.empty()),
  );
}

Override _setUpLoggingService() {
  final loggingService = MockLoggingService();

  when(loggingService.navigatorObserver).thenReturn(NavigatorObserver());

  return loggingServiceProvider.overrideWithValue(loggingService);
}
