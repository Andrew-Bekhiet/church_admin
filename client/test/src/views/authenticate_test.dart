// ignore_for_file: discarded_futures

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../fakes/fake_device_info.dart';
import 'authenticate_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthService>(),
  MockSpec<LocalAuthService>(),
  MockSpec<GoRouterState>(),
])
void main() {
  final authVariant = AuthenticationVariant();

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Authenticate Screen => Key elements',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(1024, 1365 * 3));

      await tester.pumpWidgetBuilder(
        const AuthenticateScreen(),
        wrapper: materialAppWrapper(),
      );
      await tester.pumpAndSettle();

      expect(
        find.byElementPredicate(
          (e) {
            final Widget widget = e.widget;
            if (widget is Image) {
              return widget.image == const AssetImage('assets/holyweek.jpeg') ||
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
          of: find.bySubtype<FilledButton>(),
          matching: find.text('تسجيل الدخول'),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.bySubtype<FilledButton>(),
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
            matching: find.bySubtype<FilledButton>(),
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
    'Authenticate Screen => Authentication',
    (tester) async {
      final authCompleter = Completer<bool>();
      final widgetKey = GlobalKey();

      when(LocalAuthService.I.authenticate())
          .thenAnswer((_) async => authCompleter.future);

      await tester.binding.setSurfaceSize(const Size(1024, 1365 * 5));

      await tester.pumpWidgetBuilder(
        AuthenticateScreen(key: widgetKey),
        wrapper: materialAppWrapper(),
      );
      await tester.pumpAndSettle();

      verify(LocalAuthService.I.canCheckBiometrics());

      if (authVariant.currentValue == AuthenticationVariantEnum.password) {
        await tester.enterText(
          find.byType(PasswordFormField),
          'wrong password',
        );
        await tester.tap(find.bySubtype<FilledButton>());

        await tester.pumpAndSettle();

        expect(
          find.descendant(
            of: find.bySubtype<AlertDialog>(),
            matching: find.text('كلمة سر خاطئة!'),
          ),
          findsOneWidget,
        );

        Navigator.of(widgetKey.currentContext!).pop();
        await tester.pumpAndSettle();

        await tester.enterText(
          find.byType(PasswordFormField),
          r'password\1234',
        );
        await tester.tap(find.bySubtype<FilledButton>());

        await tester.pumpAndSettle();

        verify(LocalAuthService.I.resetAuthState());
        verifyNever(LocalAuthService.I.authenticate());
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
              matching: find.bySubtype<FilledButton>(),
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
    'Authenticate Screen => Route =>',
    () {
      test(
        'No Signed In User',
        () async {
          initGlobalProviderContainer([_setUpAuthService()]);

          expect(
            AuthenticateScreen.redirect(MockGoRouterState()),
            '/login',
          );
        },
      );
      group(
        'Signed In User =>',
        () {
          test(
            'No Person',
            () async {
              initGlobalProviderContainer([
                _setUpAuthService(
                  currentUser: _fakeUser.copyWith(person: null),
                ),
                _setUpLocalAuth(),
              ]);

              expect(
                AuthenticateScreen.redirect(MockGoRouterState()),
                isNull,
              );
            },
          );

          test(
            'Should Authenticate',
            () async {
              initGlobalProviderContainer(
                [_setUpAuthService(currentUser: _fakeUser), _setUpLocalAuth()],
              );

              expect(
                AuthenticateScreen.redirect(MockGoRouterState()),
                null,
              );
            },
          );

          test(
            'Should not Authenticate (with redirection)',
            () async {
              initGlobalProviderContainer([
                _setUpAuthService(currentUser: _fakeUser),
                _setUpLocalAuth(shouldAuthenticate: false),
              ]);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.queryParameters)
                  .thenReturn({'next': '/next'});

              expect(
                AuthenticateScreen.redirect(mockGoRouterState),
                '/next',
              );
            },
          );

          test(
            'Should not Authenticate (without redirection)',
            () async {
              initGlobalProviderContainer([
                _setUpAuthService(currentUser: _fakeUser),
                _setUpLocalAuth(shouldAuthenticate: false),
              ]);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.queryParameters).thenReturn({});

              expect(
                AuthenticateScreen.redirect(mockGoRouterState),
                '/',
              );
            },
          );

          test(
            'Should authenticate for path',
            () async {
              initGlobalProviderContainer([
                _setUpAuthService(currentUser: _fakeUser),
                _setUpLocalAuth(shouldAuthenticate: false),
              ]);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.queryParameters)
                  .thenReturn({'next': '/test'});

              expect(
                AuthenticateScreen.redirect(mockGoRouterState),
                '/test',
              );

              final mockGoRouterState2 = MockGoRouterState();
              when(mockGoRouterState2.queryParameters)
                  .thenReturn({'next': '/test'});
              when(LocalAuthService.I.shouldAuthenticateForPath('/test'))
                  .thenReturn(true);

              expect(
                AuthenticateScreen.redirect(mockGoRouterState),
                null,
              );
              when(LocalAuthService.I.shouldAuthenticateForPath('/test'))
                  .thenReturn(false);

              expect(
                AuthenticateScreen.redirect(mockGoRouterState),
                '/test',
              );
            },
          );
        },
      );
    },
  );
}

Override _setUpLocalAuth({bool shouldAuthenticate = true}) {
  final mockLocalAuthService = MockLocalAuthService();
  when(mockLocalAuthService.shouldAuthenticate).thenReturn(shouldAuthenticate);

  return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
}

//Changing these values will change the precomputed password hash
const password = r'password\1234';
const email = 'email';

final User _fakeUser = User(
  uid: 'uid',
  name: '',
  permissions: PermissionsSet.fromSet(const {'approved'}),
  isMultiFactorEnrolled: true,
  email: email,
  authId: 'firebaseAuthUID',
);

Override _setUpAuthService({
  User? currentUser,
}) {
  final mockAuthService = MockAuthService();

  when(mockAuthService.isSignedIn).thenReturn(currentUser != null);
  if (currentUser != null) {
    when(mockAuthService.currentUser).thenReturn(currentUser);
  }

  return authServiceProvider.overrideWithValue(mockAuthService);
}

class AuthenticationVariant extends ValueVariant<AuthenticationVariantEnum> {
  AuthenticationVariant() : super(AuthenticationVariantEnum.values.toSet());

  @override
  Future<AuthenticationVariantEnum> setUp(
    AuthenticationVariantEnum value,
  ) async {
    await super.setUp(value);

    final encryptionService = FakeEncryptionService();

    final overrides = [
      encryptionServiceProvider.overrideWithValue(encryptionService),
      await _setUpAuthService(encryptionService),
      _setUpLocalAuthService(value),
    ];

    initGlobalProviderContainer(overrides);

    return value;
  }

  Future<Override> _setUpAuthService(
    EncryptionService encryptionService,
  ) async {
    final mock = MockAuthService();

    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        passwordKeyHash: 'asdasdasdas',
        permissions: PermissionsSet.fromSet(const {}),
        email: email,
        authId: 'firebaseAuthUID',
      ),
    );

    return authServiceProvider.overrideWithValue(mock);
  }

  Override _setUpLocalAuthService(AuthenticationVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(mockLocalAuthService.canCheckBiometrics())
        .thenAnswer((_) async => value == AuthenticationVariantEnum.biometrics);
    when(mockLocalAuthService.authenticate()).thenAnswer((_) async => true);

    return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
  }
}

enum AuthenticationVariantEnum { password, biometrics }

void _setUp() {
  _setUpDeviceInfo();
}

void _setUpDeviceInfo() {
  DeviceInfoPlatform.instance = FakeDeviceInfoPlatform();
}

class FakeEncryptionService extends EncryptionService {
  @override
  Future<HiveCipher> getHiveCipher({String? boxName}) {
    throw UnimplementedError();
  }

  @override
  Future<String> hashPassword({
    required String password,
    required Uint8List keyBytes,
  }) async {
    return password;
  }

  @override
  Future<Uint8List> deriveKey({
    required String password,
    required String salt,
  }) async {
    return Uint8List.fromList(utf8.encode(password));
  }

  @override
  Future<bool> verifyPassword(String _password, Uint8List keyBytes) async {
    if (_password == password) return true;
    return false;
  }
}
