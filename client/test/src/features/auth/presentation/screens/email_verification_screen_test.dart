import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart' hide loadAppFonts;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spot/spot.dart';

import '../../../../utils.dart';
import 'email_verification_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<AuthStorage>(),
  MockSpec<ConnectivityService>(),
  MockSpec<DatabaseService>(),
  MockSpec<UserSettingsService>(),
  MockSpec<NotificationsService>(),
  MockSpec<BuildContext>(),
  MockSpec<GoRouterState>(),
  MockSpec<LoggingService>(),
])
Future<void> main() async {
  await loadAppFonts();

  setUp(() => provideDummy<AuthState>(const AuthUnauthenticated()));

  tearDown(defaultTearDown);

  group('Email Verification Screen =>', () {
    testGoldens(
      'UI',
      (tester) async {
        final overrides = [
          _setUpAuthBloc(),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        final builder =
            DeviceBuilder(
                wrap: materialAppWithThemeAndLocale(),
              )
              ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
              ..addScenario(
                widget: const EmailVerificationScreen(),
                name: 'email_verification_screen',
              );

        await tester.pumpDeviceBuilder(
          builder,
          wrapper: materialAppWrapper(),
        );

        await screenMatchesGolden(tester, 'email_verification_screen');
      },
    );

    testWidgets(
      'Can reload user to confirm email',
      (tester) async {
        final overrides = [
          _setUpNotificationsService(),
          _setUpAuthBloc(),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        await tester.pumpWidgetBuilder(
          const EmailVerificationScreen(),
          wrapper: materialAppWrapper(),
        );
        await act.tap(
          spotKey(EmailVerificationScreenKeys.confirmEmailButtonKey),
        );

        verify(AuthBloc.I.add(const ReloadUser()));
      },
    );

    testWidgets(
      'Can resend email',
      (tester) async {
        final overrides = [
          _setUpNotificationsService(),
          _setUpAuthBloc(),
          _setUpAuthStorage(),
        ];

        initGlobalProviderContainer(overrides);

        await tester.pumpWidgetBuilder(
          const EmailVerificationScreen(),
          wrapper: materialAppWrapper(),
        );

        await tester.dragUntilVisible(
          find.byKey(EmailVerificationScreenKeys.resendEmailButtonKey),
          find.byType(SingleChildScrollView),
          const Offset(0, -150),
        );

        await act.tap(
          spotKey(EmailVerificationScreenKeys.resendEmailButtonKey),
        );

        await AuthBloc.I.stream.firstWhere((state) => state is! AuthLoading);

        verify(AuthBloc.I.add(const SendEmailVerification()));
      },
    );
  });

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
            const EmailVerificationRoute().redirect(
              MockBuildContext(),
              MockGoRouterState(),
            ),
            const LoginRoute().location,
          );
        },
      );

      test(
        'Signed In User: Email Not Verified',
        () async {
          final overrides = [
            _setUpAuthBloc(emailVerified: false),
            _setUpAuthStorage(),
          ];

          initGlobalProviderContainer(overrides);

          expect(
            const EmailVerificationRoute().redirect(
              MockBuildContext(),
              MockGoRouterState(),
            ),
            null,
          );
        },
      );

      test(
        'Signed In User: Email Verified',
        () async {
          final overrides = [
            _setUpAuthBloc(),
            _setUpAuthStorage(),
          ];

          initGlobalProviderContainer(overrides);

          expect(
            const EmailVerificationRoute().redirect(
              MockBuildContext(),
              MockGoRouterState(),
            ),
            isNotNull,
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

Override _setUpAuthBloc({bool isSignedIn = true, bool emailVerified = true}) {
  final authBloc = MockAuthBloc();

  if (isSignedIn) {
    final user = AuthUser(
      uid: 'uid',
      email: 'email',
      emailVerified: emailVerified,
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

    when(authBloc.state).thenReturn(
      AuthAuthenticated(
        authUser: user,
      ),
    );
  }

  when(authBloc.stream).thenAnswer((_) => Stream.value(authBloc.state));
  when(authBloc.isSignedIn).thenReturn(isSignedIn);

  return authBlocProvider.overrideWithValue(authBloc);
}

Override _setUpNotificationsService() {
  final notifications = MockNotificationsService();

  return notificationsServiceProvider.overrideWithValue(notifications);
}
