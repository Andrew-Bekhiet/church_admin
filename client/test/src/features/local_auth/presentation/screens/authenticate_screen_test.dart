import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sembast/sembast.dart';
import 'package:spot/spot.dart';

import '../../../../fakes/fake_device_info.dart';
import '../../../../utils.dart';
import 'authenticate_screen_test.mocks.dart';

const testPassword = r'password\1234';
const testPasswordHash = 'hash-password1234';
const email = 'email';

const AuthUser _fakeUser = AuthUser(
  uid: 'uid',
  email: email,
  idToken: 'idToken',
);

const User _fakeUserData = User(uid: 'uid', email: email, name: 'name');

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<AuthStorage>(),
  MockSpec<LocalAuthService>(),
  MockSpec<GoRouterState>(),
  MockSpec<BuildContext>(),
])
void main() {
  final authVariant = AuthenticationVariant();

  setUp(_setUp);

  tearDown(defaultTearDown);

  const size = Size(100, 1365 * 3);

  testWidgets(
    'Authenticate Screen => Key elements',
    (tester) async {
      await tester.binding.setSurfaceSize(size);

      await tester.pumpWidgetBuilder(
        SizedBox.fromSize(
          size: size,
          child: Builder(
            builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(size: size),
                child: const AuthenticateScreen(),
              );
            },
          ),
        ),
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
                  widget.image == const AssetImage('assets/logo.png');
            }
            return false;
          },
          skipOffstage: false,
        ),
        findsOneWidget,
      );

      spotKey(
        AuthenticateScreenKeys.passwordFieldKey,
      ).spot<PasswordFormField>().existsOnce();

      spotKey(AuthenticateScreenKeys.submitButtonKey).existsOnce();

      spotKey(AuthenticateScreenKeys.biometricsButtonKey)
          .spotFinder(find.bySubtype<FilledButton>())
          .existsExactlyNTimes(
            authVariant.currentValue == AuthenticationVariantEnum.password
                ? 0
                : 1,
          );
    },
    variant: authVariant,
  );

  testWidgets(
    'Authenticate Screen => Authentication',
    (tester) async {
      final authCompleter = Completer<bool>();
      final widgetKey = GlobalKey();

      when(
        LocalAuthService.I.authenticate(),
      ).thenAnswer((_) async => authCompleter.future);

      await tester.pumpWidgetBuilder(
        SizedBox.fromSize(
          size: size,
          child: Builder(
            builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(size: size),
                child: AuthenticateScreen(key: widgetKey),
              );
            },
          ),
        ),
        wrapper: materialAppWrapper(),
      );
      await tester.pumpAndSettle();

      verify(LocalAuthService.I.canCheckBiometrics());

      if (authVariant.currentValue == AuthenticationVariantEnum.password) {
        await act.enterText(
          spotKey(AuthenticateScreenKeys.passwordFieldKey),
          'wrong password',
        );
        await act.tap(spotKey(AuthenticateScreenKeys.submitButtonKey));

        await tester.pumpAndSettle();

        spot<AlertDialog>().spotText('كلمة سر خاطئة!').existsOnce();

        Navigator.of(widgetKey.currentContext!).pop();
        await tester.pumpAndSettle();

        await act.enterText(
          spotKey(AuthenticateScreenKeys.passwordFieldKey),
          testPassword,
        );
        await act.tap(spotKey(AuthenticateScreenKeys.submitButtonKey));

        await tester.pumpAndSettle();

        verifyInOrder([
          LocalAuthService.I.verifyPassword(
            email: _fakeUser.email,
            password: testPassword,
            storedPasswordHash: testPasswordHash,
          ),
          LocalAuthService.I.resetAuthState(),
        ]);
        verifyNever(LocalAuthService.I.authenticate());
      } else {
        verify(LocalAuthService.I.authenticate());

        authCompleter.complete(false);

        await tester.pumpAndSettle();

        verifyNever(LocalAuthService.I.resetAuthState());

        final authCompleter2 = Completer<bool>();

        when(
          LocalAuthService.I.authenticate(),
        ).thenAnswer((_) async => authCompleter2.future);

        await act.tap(spotKey(AuthenticateScreenKeys.biometricsButtonKey));

        authCompleter2.complete(true);

        await tester.pumpAndSettle();

        verify(LocalAuthService.I.resetAuthState());
      }
    },
    variant: authVariant,
  );

  group('Authenticate Screen => Route =>', () {
    test('No Signed In User', () async {
      initGlobalProviderContainer([_setUpAuthBloc(), _setUpLocalAuth()]);

      expect(
        AuthenticateRoute().redirect(
          MockBuildContext(),
          MockGoRouterState(),
        ),
        '/login',
      );
    });
    group('Signed In User =>', () {
      test('No Person', () async {
        initGlobalProviderContainer([
          _setUpAuthBloc(
            currentUser: _fakeUser,
            currentUserData: _fakeUserData.copyWith(person: null),
          ),
          _setUpLocalAuth(),
        ]);

        expect(
          AuthenticateRoute().redirect(
            MockBuildContext(),
            MockGoRouterState(),
          ),
          isNull,
        );
      });

      test('Should Authenticate', () async {
        initGlobalProviderContainer([
          _setUpAuthBloc(
            currentUser: _fakeUser,
            currentUserData: _fakeUserData,
          ),
          _setUpLocalAuth(),
        ]);

        expect(
          AuthenticateRoute().redirect(
            MockBuildContext(),
            MockGoRouterState(),
          ),
          null,
        );
      });

      test('Should not Authenticate (with redirection)', () async {
        initGlobalProviderContainer([
          _setUpAuthBloc(
            currentUser: _fakeUser,
            currentUserData: _fakeUserData,
          ),
          _setUpLocalAuth(shouldAuthenticate: false),
        ]);

        expect(
          AuthenticateRoute(
            next: '/next',
          ).redirect(MockBuildContext(), MockGoRouterState()),
          '/next',
        );
      });

      test('Should not Authenticate (without redirection)', () async {
        initGlobalProviderContainer([
          _setUpAuthBloc(
            currentUser: _fakeUser,
            currentUserData: _fakeUserData,
          ),
          _setUpLocalAuth(shouldAuthenticate: false),
        ]);

        final mockGoRouterState = MockGoRouterState();
        when(mockGoRouterState.uri).thenReturn(Uri());

        expect(
          AuthenticateRoute().redirect(
            MockBuildContext(),
            mockGoRouterState,
          ),
          '/',
        );
      });

      test('Should authenticate for path', () async {
        initGlobalProviderContainer([
          _setUpAuthBloc(
            currentUser: _fakeUser,
            currentUserData: _fakeUserData,
          ),
          _setUpLocalAuth(shouldAuthenticate: false),
        ]);

        expect(
          AuthenticateRoute(
            next: '/test',
          ).redirect(MockBuildContext(), MockGoRouterState()),
          '/test',
        );

        when(
          LocalAuthService.I.shouldAuthenticateForPath('/test'),
        ).thenReturn(true);

        expect(
          AuthenticateRoute(
            next: '/test',
          ).redirect(MockBuildContext(), MockGoRouterState()),
          null,
        );
        when(
          LocalAuthService.I.shouldAuthenticateForPath('/test'),
        ).thenReturn(false);

        expect(
          AuthenticateRoute(
            next: '/test',
          ).redirect(MockBuildContext(), MockGoRouterState()),
          '/test',
        );
      });
    });
  });
}

Override _setUpLocalAuth({bool shouldAuthenticate = true}) {
  final mockLocalAuthService = MockLocalAuthService();
  when(mockLocalAuthService.shouldAuthenticate).thenReturn(shouldAuthenticate);

  return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
}

Override _setUpAuthBloc({AuthUser? currentUser, User? currentUserData}) {
  final mockAuthBloc = MockAuthBloc();

  when(mockAuthBloc.isSignedIn).thenReturn(currentUser != null);
  if (currentUser != null) {
    when(mockAuthBloc.currentUser).thenReturn(currentUser);
  }

  if (currentUserData != null) {
    when(mockAuthBloc.currentUserData).thenReturn(currentUserData);
  }
  when(mockAuthBloc.state).thenReturn(
    currentUser != null
        ? AuthAuthenticated(authUser: currentUser, userData: currentUserData)
        : const AuthUnauthenticated(),
  );

  return authBlocProvider.overrideWithValue(mockAuthBloc);
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
      _setUpAuthBloc(),
      _setUpLocalAuthService(value),
      _setUpAuthStorage(encryptionService),
    ];

    initGlobalProviderContainer(overrides);

    return value;
  }

  Override _setUpAuthStorage(EncryptionService encryptionService) {
    final mock = MockAuthStorage();
    when(mock.getPasswordHash()).thenAnswer((_) async => testPasswordHash);

    return authStorageProvider.overrideWithValue(mock);
  }

  Override _setUpAuthBloc() {
    final mock = MockAuthBloc();

    when(mock.currentUser).thenReturn(_fakeUser);

    return authBlocProvider.overrideWithValue(mock);
  }

  Override _setUpLocalAuthService(AuthenticationVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(
      mockLocalAuthService.canCheckBiometrics(),
    ).thenAnswer((_) async => value == AuthenticationVariantEnum.biometrics);
    when(mockLocalAuthService.authenticate()).thenAnswer((_) async => true);
    when(
      mockLocalAuthService.verifyPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
        storedPasswordHash: anyNamed('storedPasswordHash'),
      ),
    ).thenAnswer((i) async => i.namedArguments[#password] == testPassword);

    return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
  }
}

enum AuthenticationVariantEnum { password, biometrics }

void _setUp() {
  provideDummy<AuthState>(const AuthUnauthenticated());

  _setUpDeviceInfo();
}

void _setUpDeviceInfo() {
  DeviceInfoPlatform.instance = FakeDeviceInfoPlatform();
}

class FakeEncryptionService extends EncryptionService {
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
  Future<bool> verifyPassword({
    required String passwordToVerify,
    required Uint8List keyBytes,
    required String? storedPasswordHash,
  }) async {
    return passwordToVerify == testPassword;
  }

  @override
  Future<SembastCodec> getSembastCodec(String dbName) {
    throw UnimplementedError();
  }
}
