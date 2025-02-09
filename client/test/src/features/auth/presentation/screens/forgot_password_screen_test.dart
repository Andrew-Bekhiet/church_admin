import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart' hide loadAppFonts;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:spot/spot.dart';

import '../../../../utils.dart';
import 'forgot_password_screen_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AuthBloc>()])
void main() {
  loadAppFonts();

  setUp(_setUp);
  tearDown(defaultTearDown);

  group(
    'Forgot Password Screen =>',
    () {
      testGoldens(
        'UI',
        (tester) async {
          final deviceBuilder = DeviceBuilder(
            wrap: materialAppWithThemeAndLocale(),
          )
            ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
            ..addScenario(
              widget: const ForgotPasswordScreen(),
              name: 'forgot password',
            )
            ..addScenario(
              widget: const ForgotPasswordScreen(),
              name: 'reset link sent',
              onCreate: (key) async {
                await act.enterText(
                  spotKey(
                    ForgotPasswordScreenKeys.emailFieldKey,
                    parents: [
                      spotKey(key),
                    ],
                  ),
                  'email@example.com',
                );

                await act.tap(
                  spotKey(
                    ForgotPasswordScreenKeys.sendResetLinkButtonKey,
                    parents: [spotKey(key)],
                  ),
                );

                await tester.pumpAndSettle();
              },
            );

          await tester.pumpDeviceBuilder(deviceBuilder);
          await tester.pumpAndSettle();

          await screenMatchesGolden(
            tester,
            'forgot_password_screen',
          );
        },
      );

      testWidgets(
        'Send Reset Link',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const ForgotPasswordScreen(),
            wrapper: materialAppWithThemeAndLocale(),
          );

          await tester.pumpAndSettle();

          await act.enterText(
            spotKey(ForgotPasswordScreenKeys.emailFieldKey),
            'email@example.com',
          );

          await act.tap(
            spotKey(ForgotPasswordScreenKeys.sendResetLinkButtonKey),
          );

          await AuthBloc.I.stream.firstWhere((state) => state is! AuthLoading);

          verify(
            AuthBloc.I
                .add(const SendPasswordResetEmail(email: 'email@example.com')),
          );

          spotKey(ForgotPasswordScreenKeys.emailFieldKey).doesNotExist();
          spotKey(ForgotPasswordScreenKeys.sendResetLinkButtonKey)
              .doesNotExist();
          spotKey(ForgotPasswordScreenKeys.backButtonKey).existsOnce();
        },
      );
    },
  );
}

void _setUp() {
  provideDummy<AuthState>(const AuthUnauthenticated());

  final overrides = [
    _setUpAuthBloc(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpAuthBloc() {
  final authBloc = MockAuthBloc();

  when(authBloc.state).thenReturn(const AuthUnauthenticated());
  when(authBloc.stream)
      .thenAnswer((_) => Stream.value(const AuthUnauthenticated()));

  return authBlocProvider.overrideWithValue(authBloc);
}
