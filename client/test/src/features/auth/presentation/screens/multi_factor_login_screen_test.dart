import 'dart:async';
import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart' hide loadAppFonts;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spot/spot.dart';

import '../../../../utils.dart';
import 'multi_factor_login_screen_test.mocks.dart';

MultiFactorSession mockSession = MultiFactorSession(
  id: '123',
  email: 'test@test.com',
  password: 'password123',
  enrolledFactors: [mockFactor],
  phoneNumber: '+201234567890',
);
MultiFactorInfo mockFactor = MultiFactorInfo(
  id: '123',
  type: MultiFactorType.phone,
  displayName: '+201234567890',
  enrolledAt: DateTime.now(),
);

MultiFactorChallenge mockChallenge = MultiFactorChallenge(
  createdAt: DateTime.now().subtract(const Duration(seconds: 1)),
  verificationId: '123',
);

MultiFactorChallenge mockChallengeWithResendToken = MultiFactorChallenge(
  createdAt: DateTime.now().subtract(const Duration(seconds: 1)),
  verificationId: '123',
  resendToken: Random().nextInt(1000000),
);

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<BuildContext>(),
  MockSpec<GoRouterState>(),
])
void main() {
  loadAppFonts();

  setUp(_setUp);
  tearDown(defaultTearDown);

  group(
    'Multi Factor Login Screen =>',
    () {
      testGoldens(
        'UI: initial state',
        (tester) async {
          final deviceBuilder =
              DeviceBuilder(
                  wrap: materialAppWithThemeAndLocale(),
                )
                ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
                ..addScenario(
                  widget: const MultiFactorLogin(),
                  name: 'initial state',
                );

          await tester.pumpDeviceBuilder(deviceBuilder);
          await tester.pumpAndSettle();

          await screenMatchesGolden(
            tester,
            'multi_factor_login_screen_initial_state',
          );
        },
      );

      testGoldens(
        'UI: multi factor challenge in progress',
        (tester) async {
          AuthBloc.I.add(
            StartMultiFactorChallenge(
              session: mockSession,
              selectedFactor: mockFactor,
              phoneNumber: '+201234567890',
              resendToken: 123,
            ),
          );

          final deviceBuilder =
              DeviceBuilder(
                  wrap: materialAppWithThemeAndLocale(),
                )
                ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
                ..addScenario(
                  widget: const MultiFactorLogin(),
                  name: 'multi factor challenge in progress',
                );

          await tester.pumpDeviceBuilder(deviceBuilder);
          await tester.pumpAndSettle();

          await screenMatchesGolden(
            tester,
            'multi_factor_login_screen_challenge_in_progress',
          );
        },
      );

      testWidgets(
        'Verify Code',
        (tester) async {
          AuthBloc.I.add(
            StartMultiFactorChallenge(
              session: mockSession,
              selectedFactor: mockFactor,
              phoneNumber: '+201234567890',
            ),
          );
          await tester.pumpWidgetBuilder(
            const MultiFactorLogin(),
            wrapper: materialAppWithThemeAndLocale(),
          );

          await tester.pumpAndSettle();

          await tester.dragUntilVisible(
            find.byKey(MultiFactorLoginScreenKeys.verificationCodeFieldKey),
            find.byType(SingleChildScrollView),
            const Offset(0, -100),
          );

          final otp = _generateRandomOtp();

          await act.enterText(
            spotKey(MultiFactorLoginScreenKeys.verificationCodeFieldKey),
            otp,
          );

          final captured = verify(
            (AuthBloc.I as MockAuthBloc).add(
              captureThat(isA<CompleteMultiFactorChallenge>()),
            ),
          ).captured.single;

          expect(
            captured,
            isA<CompleteMultiFactorChallenge>()
                .having(
                  (c) => c.verificationCode,
                  'verificationCode',
                  otp,
                )
                .having(
                  (c) => c.selectedFactor,
                  'selectedFactor',
                  mockFactor,
                )
                .having(
                  (c) => c.session,
                  'session',
                  mockSession,
                )
                .having(
                  (c) => c.challenge,
                  'challenge',
                  mockChallenge,
                ),
          );
        },
      );

      testWidgets(
        'Resend Code',
        (tester) async {
          AuthState state = AuthMultiFactorChallengeInProgress(
            challenge: mockChallenge,
            session: mockSession,
          );

          when(AuthBloc.I.state).thenReturn(state);
          when(AuthBloc.I.stream).thenAnswer((_) async* {
            yield state = AuthMultiFactorChallengeInProgress(
              challenge: mockChallenge,
              session: mockSession,
            );

            await Future.delayed(const Duration(seconds: 30));

            yield state = AuthMultiFactorChallengeInProgress(
              challenge: mockChallengeWithResendToken,
              session: mockSession,
            );
          });

          await tester.pumpWidgetBuilder(
            MultiFactorLogin(clock: tester.binding.clock),
            wrapper: materialAppWithThemeAndLocale(),
          );

          await tester.pumpAndSettle();

          await tester.tap(
            spotKey(MultiFactorLoginScreenKeys.resendCodeButtonKey).finder,
            warnIfMissed: false,
          );

          verifyNever((AuthBloc.I as MockAuthBloc).add(any));

          await tester.pumpAndSettle(const Duration(seconds: 33));

          await act.tap(
            spotKey(MultiFactorLoginScreenKeys.resendCodeButtonKey),
          );

          final captured = verify(
            (AuthBloc.I as MockAuthBloc).add(
              captureThat(isA<StartMultiFactorChallenge>()),
            ),
          ).captured.single;

          expect(
            captured,
            isA<StartMultiFactorChallenge>()
                .having(
                  (c) => c.resendToken,
                  'resendToken',
                  mockChallengeWithResendToken.resendToken,
                )
                .having(
                  (c) => c.selectedFactor,
                  'selectedFactor',
                  mockFactor,
                )
                .having(
                  (c) => c.session,
                  'session',
                  mockSession,
                ),
          );
        },
      );

      testWidgets(
        'Enroll MFA',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const MultiFactorLogin(),
            wrapper: materialAppWithThemeAndLocale(),
          );

          await tester.pumpAndSettle();

          await act.enterText(
            spotKey(MultiFactorLoginScreenKeys.phoneNumberFieldKey),
            mockSession.phoneNumber!,
          );

          await act.enterText(
            spotKey(MultiFactorLoginScreenKeys.passwordFieldKey),
            mockSession.password,
          );

          await act.tap(
            spotKey(MultiFactorLoginScreenKeys.enrollButtonKey),
          );

          verify(
            AuthBloc.I.add(
              EnrollMultiFactor(
                phoneNumber: mockSession.phoneNumber!,
                password: mockSession.password,
              ),
            ),
          );
        },
      );

      group(
        'Route =>',
        () {
          test(
            'Redirects if multi factor is enrolled',
            () async {
              when(AuthBloc.I.state).thenReturn(
                const AuthAuthenticated(
                  authUser: AuthUser(
                    uid: 'uid',
                    email: 'email',
                    emailVerified: true,
                    idToken: '',
                    isMultiFactorEnabled: true,
                  ),
                ),
              );

              expect(
                const MultiFactorLoginRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                isNotNull,
              );
            },
          );

          test(
            'Redirects user email is unverified',
            () async {
              when(AuthBloc.I.state).thenReturn(
                const AuthAuthenticated(
                  authUser: AuthUser(
                    uid: 'uid',
                    email: 'email',
                    emailVerified: false,
                    idToken: '',
                  ),
                ),
              );

              expect(
                const MultiFactorLoginRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                isNotNull,
              );
            },
          );

          test(
            'Stays on page if no MFA is enrolled',
            () async {
              when(AuthBloc.I.state).thenReturn(
                const AuthAuthenticated(
                  authUser: AuthUser(
                    uid: 'uid',
                    email: 'email',
                    emailVerified: true,
                    idToken: '',
                  ),
                ),
              );

              expect(
                const MultiFactorLoginRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                isNull,
              );
            },
          );

          test(
            'Stays on page if MFA is in progress',
            () async {
              when(AuthBloc.I.state).thenReturn(
                AuthMultiFactorChallengeInProgress(
                  challenge: mockChallenge,
                  session: mockSession,
                ),
              );

              expect(
                const MultiFactorLoginRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                isNull,
              );
            },
          );

          test(
            'Redirects if no signed in user',
            () async {
              when(AuthBloc.I.state).thenReturn(
                const AuthUnauthenticated(),
              );

              expect(
                const MultiFactorLoginRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                isNotNull,
              );
            },
          );
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

  final streamController = StreamController<AuthState>.broadcast(sync: true);

  AuthState state = const AuthAuthenticated(
    authUser: AuthUser(
      uid: '123',
      email: 'test@test.com',
      emailVerified: true,
      idToken: 'token',
    ),
  );

  when(authBloc.state).thenReturn(state);
  when(authBloc.stream).thenAnswer((_) async* {
    yield state;
    yield* streamController.stream;
  });
  when(authBloc.add(any)).thenAnswer((i) {
    final event = i.positionalArguments.single as AuthEvent;
    if (event is EnrollMultiFactor || event is StartMultiFactorChallenge) {
      state = AuthMultiFactorChallengeInProgress(
        session: mockSession,
        challenge: mockChallenge,
      );
      streamController.add(state);
    } else if (event is CompleteMultiFactorChallenge) {
      state = const AuthAuthenticated(
        authUser: AuthUser(
          uid: '123',
          email: 'test@test.com',
          emailVerified: true,
          idToken: 'token',
        ),
      );
      streamController.add(state);
    }
  });

  return authBlocProvider.overrideWith((ref) {
    ref.onDispose(streamController.close);

    return authBloc;
  });
}

String _generateRandomOtp() {
  return Random().nextInt(1000000).toString().padLeft(6, '0');
}
