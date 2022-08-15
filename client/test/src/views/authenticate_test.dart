import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

import '../widgets/church_admin_app_test.mocks.dart';
import 'login_test.mocks.dart';

void main() {
  group(
    'Authenticate Screen tests:',
    () {
      final authVariant = AuthenticationVariant();

      tearDown(GetIt.I.reset);

      testWidgets(
        'Key elements',
        (tester) async {
          await tester.binding.setSurfaceSize(const Size(1024, 1365 * 3));

          await tester
              .pumpWidget(wrapWithMaterialApp(const AuthenticateScreen()));
          await tester.pumpAndSettle();

          expect(
            find.byElementPredicate(
              (e) {
                final Widget widget = e.widget;
                if (widget is Image) {
                  return widget.image ==
                          const AssetImage('assets/holyweek.jpeg') ||
                      widget.image == const AssetImage('assets/risen.jpg') ||
                      widget.image == const AssetImage('assets/Logo.png');
                }
                return false;
              },
              skipOffstage: false,
            ),
            findsOneWidget,
          );

          expect(find.byType(PasswordFormField), findsOneWidget);
          expect(
            find.descendant(
              of: find.bySubtype<ElevatedButton>(),
              matching: find.text('تسجيل الدخول'),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.bySubtype<OutlinedButton>(),
              matching: find.text('إعادة المحاولة عن طريق بصمة الاصبع/الوجه'),
            ),
            authVariant.currentValue != AuthenticationVariantEnum.password
                ? findsOneWidget
                : findsNothing,
          );
          expect(
            find.descendant(
              of: find.ancestor(
                of: find.text('إعادة المحاولة عن طريق بصمة الاصبع/الوجه'),
                matching: find.bySubtype<OutlinedButton>(),
              ),
              matching: find.byIcon(Icons.fingerprint),
            ),
            authVariant.currentValue != AuthenticationVariantEnum.password
                ? findsOneWidget
                : findsNothing,
          );
        },
        variant: authVariant,
      );

      testWidgets(
        'Authentication',
        (tester) async {
          final authCompleter = Completer<bool>();
          final navigatorKey = GlobalKey<NavigatorState>();

          when(LocalAuthService.I.authenticate())
              .thenAnswer((_) async => authCompleter.future);

          await tester.binding.setSurfaceSize(const Size(1024, 1365 * 5));

          await tester.pumpWidget(wrapWithMaterialApp(
              const AuthenticateScreen(),
              navigatorKey: navigatorKey));
          await tester.pumpAndSettle();

          verify(LocalAuthService.I.canCheckBiometrics());

          if (authVariant.currentValue == AuthenticationVariantEnum.password) {
            verifyNever(LocalAuthService.I.authenticate());

            await tester.enterText(
                find.byType(PasswordFormField), 'wrong password');
            await tester.tap(find.bySubtype<ElevatedButton>());

            await tester.pumpAndSettle();

            expect(
              find.descendant(
                  of: find.bySubtype<AlertDialog>(),
                  matching: find.text('كلمة سر خاطئة!')),
              findsOneWidget,
            );

            navigatorKey.currentState!.pop();
            await tester.pumpAndSettle();

            await tester.enterText(
                find.byType(PasswordFormField), r'password\1234');
            await tester.tap(find.bySubtype<ElevatedButton>());

            await tester.pumpAndSettle();

            verify(LocalAuthService.I.resetAuthState());
          } else {
            verify(LocalAuthService.I.authenticate());

            authCompleter.complete(false);

            await tester.pumpAndSettle();

            verifyNever(LocalAuthService.I.resetAuthState());

            final authCompleter2 = Completer<bool>();

            when(LocalAuthService.I.authenticate())
                .thenAnswer((_) async => authCompleter2.future);

            await tester.tap(
              find.descendant(
                of: find.ancestor(
                  of: find.text('إعادة المحاولة عن طريق بصمة الاصبع/الوجه'),
                  matching: find.bySubtype<OutlinedButton>(),
                ),
                matching: find.byIcon(Icons.fingerprint),
              ),
            );

            authCompleter2.complete(true);

            await tester.pumpAndSettle();

            verify(LocalAuthService.I.resetAuthState());
          }
        },
        variant: authVariant,
      );

      group(
        'Route',
        () {
          test(
            'No Signed In User',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(false);

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny))
                  .thenReturn('/login');

              expect(
                AuthenticateScreen.route.redirect(mockGoRouterState),
                '/login',
              );
              verify(mockGoRouterState.namedLocation('login'));
            },
          );

          test(
            'Signed In User: No Password',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(true);
              when(mockCAAuthRepository.currentUser).thenReturn(
                User(
                  uid: 'uid',
                  name: '',
                  userData: UserData(
                    permissions: CAPermissionsSet.fromSet(const {}),
                    email: 'email',
                    firebaseAuthUid: 'firebaseAuthUID',
                    password: '',
                    uid: 'uid',
                  ),
                ),
              );

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockLocalAuthService = MockLocalAuthService();
              when(mockLocalAuthService.shouldAuthenticate).thenReturn(true);

              GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny))
                  .thenReturn('/register');

              expect(AuthenticateScreen.route.redirect(mockGoRouterState),
                  '/register');
              verify(mockGoRouterState.namedLocation('register_user_data'));
            },
          );

          test(
            'Signed In User: Should Authenticate',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(true);
              when(mockCAAuthRepository.currentUser).thenReturn(
                User(
                  uid: 'uid',
                  name: '',
                  userData: UserData(
                    password: '',
                    uid: 'uid',
                    permissions: CAPermissionsSet.fromSet(const {}),
                    email: 'email',
                    firebaseAuthUid: 'firebaseAuthUID',
                  ),
                ),
              );

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockLocalAuthService = MockLocalAuthService();
              when(mockLocalAuthService.shouldAuthenticate).thenReturn(true);

              GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

              expect(
                  AuthenticateScreen.route.redirect(mockGoRouterState), null);
              verifyNever(mockGoRouterState.namedLocation('login'));
            },
          );

          test(
            'Signed In User: Should not Authenticate',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(true);
              when(mockCAAuthRepository.currentUser).thenReturn(
                User(
                  uid: 'uid',
                  name: '',
                  userData: UserData(
                    uid: 'uid',
                    password: '',
                    permissions: CAPermissionsSet.fromSet(const {}),
                    email: 'email',
                    firebaseAuthUid: 'firebaseAuthUID',
                  ),
                ),
              );

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockLocalAuthService = MockLocalAuthService();
              when(mockLocalAuthService.shouldAuthenticate).thenReturn(false);

              GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);

              //Case 1
              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');
              when(mockGoRouterState.queryParams).thenReturn({'next': '/next'});

              expect(AuthenticateScreen.route.redirect(mockGoRouterState),
                  '/next');
              verifyNever(mockGoRouterState.namedLocation('login'));

              //Case 2
              final mockGoRouterState2 = MockGoRouterState();
              when(mockGoRouterState2.namedLocation(captureAny))
                  .thenReturn('/');
              when(mockGoRouterState2.queryParams).thenReturn({});

              expect(
                  AuthenticateScreen.route.redirect(mockGoRouterState2), '/');
              verifyNever(mockGoRouterState2.namedLocation('login'));
            },
          );
        },
      );
    },
  );
}

class AuthenticationVariant extends ValueVariant<AuthenticationVariantEnum> {
  AuthenticationVariant() : super(AuthenticationVariantEnum.values.toSet());

  @override
  Future<AuthenticationVariantEnum> setUp(
      AuthenticationVariantEnum value) async {
    await super.setUp(value);

    final mock = MockCAAuthRepository();
    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        userData: UserData(
          uid: 'uid',
          password: '',
          permissions: CAPermissionsSet.fromSet(const {}),
          email: 'email',
          firebaseAuthUid: 'firebaseAuthUID',
        ),
      ),
    );

    GetIt.I.registerSingleton<CAAuthRepository>(mock);

    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        userData: UserData(
          uid: 'uid',
          password: await EncryptionService.encryptPassword(r'password\1234'),
          permissions: CAPermissionsSet.fromSet(const {}),
          email: 'email',
          firebaseAuthUid: 'firebaseAuthUID',
        ),
      ),
    );

    final mockLocalAuthService = MockLocalAuthService();

    when(mockLocalAuthService.canCheckBiometrics())
        .thenAnswer((_) async => value == AuthenticationVariantEnum.biometrics);
    when(mockLocalAuthService.authenticate()).thenAnswer((_) async => true);

    GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);

    return value;
  }

  @override
  Future<void> tearDown(AuthenticationVariantEnum value,
      AuthenticationVariantEnum memento) async {
    await super.tearDown(value, memento);
  }
}

enum AuthenticationVariantEnum { password, biometrics }
