import 'dart:async';

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
import 'unapproved_user_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<BuildContext>(),
  MockSpec<GoRouterState>(),
])
Future<void> main() async {
  await loadAppFonts();

  setUp(_setUp);
  tearDown(defaultTearDown);

  group(
    'Unapproved User Screen =>',
    () {
      testGoldens(
        'UI',
        (tester) async {
          final deviceBuilder =
              DeviceBuilder(
                  wrap: materialAppWithThemeAndLocale(),
                )
                ..overrideDevicesForAllScenarios(devices: [Device.iphone11])
                ..addScenario(
                  widget: const UnapprovedUserScreen(),
                  name: 'initial state',
                );

          await tester.pumpDeviceBuilder(deviceBuilder);
          await tester.pumpAndSettle();

          await screenMatchesGolden(
            tester,
            'unapproved_user_screen',
          );
        },
      );

      group(
        'Route',
        () {
          test(
            'Redirects to login if user is not authenticated',
            () async {
              when(AuthBloc.I.state).thenReturn(const AuthUnauthenticated());

              expect(
                const UnapprovedUserRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                const LoginRoute().location,
              );
            },
          );
          test(
            'Redirects to home if user is approved',
            () async {
              when(AuthBloc.I.state).thenReturn(
                const AuthAuthenticated(
                  authUser: AuthUser(
                    uid: '123',
                    email: 'test@test.com',
                    emailVerified: true,
                    idToken: 'token',
                  ),
                  userData: User(
                    uid: '123',
                    name: 'test',
                    permissions: PermissionsSet.fromSet({
                      UserPermission.approved,
                    }),
                  ),
                ),
              );

              expect(
                const UnapprovedUserRoute().redirect(
                  MockBuildContext(),
                  MockGoRouterState(),
                ),
                const HomeScreenRoute().location,
              );
            },
          );

          test('Stays on screen if user is not approved', () async {
            when(AuthBloc.I.state).thenReturn(
              const AuthAuthenticated(
                authUser: AuthUser(
                  uid: '123',
                  email: 'test@test.com',
                  emailVerified: true,
                  idToken: 'token',
                ),
                userData: User(
                  uid: '123',
                  name: 'test',
                ),
              ),
            );

            expect(
              const UnapprovedUserRoute().redirect(
                MockBuildContext(),
                MockGoRouterState(),
              ),
              isNull,
            );
          });
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
  late final streamController = StreamController<AuthState>.broadcast();

  const state = AuthAuthenticated(
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
    if (event is ReloadUser) {
      streamController.add(
        const AuthAuthenticated(
          authUser: AuthUser(
            uid: '123',
            email: 'test@test.com',
            emailVerified: true,
            idToken: 'token',
            claims: {'approved': true},
          ),
        ),
      );
    }
  });

  return authBlocProvider.overrideWith((ref) {
    ref.onDispose(streamController.close);

    return authBloc;
  });
}
