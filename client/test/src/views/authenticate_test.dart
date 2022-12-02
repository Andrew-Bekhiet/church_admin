// ignore_for_file: discarded_futures

import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../dummy_named_location.dart';
import '../fakes/fake_device_info.dart';
import 'authenticate_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthService>(),
  MockSpec<DummyNamedLocation>(),
  MockSpec<LocalAuthService>()
])
void main() {
  final authVariant = AuthenticationVariant();

  setUp(_setUp);

  tearDown(GetIt.I.reset);

  testWidgets(
    'Authenticate Screen => Key elements',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(1024, 1365 * 3));

      await tester.pumpWidget(wrapWithMaterialApp(const AuthenticateScreen()));
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
    'Authenticate Screen => Authentication',
    (tester) async {
      final authCompleter = Completer<bool>();
      final navigatorKey = GlobalKey<NavigatorState>();

      when(LocalAuthService.I.authenticate())
          .thenAnswer((_) async => authCompleter.future);

      await tester.binding.setSurfaceSize(const Size(1024, 1365 * 5));

      await tester.pumpWidget(
        wrapWithMaterialApp(
          const AuthenticateScreen(),
          navigatorKey: navigatorKey,
        ),
      );
      await tester.pumpAndSettle();

      verify(LocalAuthService.I.canCheckBiometrics());

      if (authVariant.currentValue == AuthenticationVariantEnum.password) {
        await tester.enterText(
          find.byType(PasswordFormField),
          'wrong password',
        );
        await tester.tap(find.bySubtype<ElevatedButton>());

        await tester.pumpAndSettle();

        expect(
          find.descendant(
            of: find.bySubtype<AlertDialog>(),
            matching: find.text('كلمة سر خاطئة!'),
          ),
          findsOneWidget,
        );

        navigatorKey.currentState!.pop();
        await tester.pumpAndSettle();

        await tester.enterText(
          find.byType(PasswordFormField),
          r'password\1234',
        );
        await tester.tap(find.bySubtype<ElevatedButton>());

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
    'Authenticate Screen => Route =>',
    () {
      test(
        'No Signed In User',
        () async {
          _setUpAuthService();

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny))
              .thenReturn('/login');

          expect(
            AuthenticateScreen.redirect(
              mockGoRouterState.namedLocation,
              mockGoRouterState,
            ),
            '/login',
          );
          verify(mockGoRouterState.namedLocation('login'));
        },
      );

      test(
        'Signed In User => No Password',
        () async {
          _setUpAuthService(currentUser: _fakeUser.copyWith(password: null));

          _setUpLocalAuth();

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny))
              .thenReturn('/register');

          expect(
            AuthenticateScreen.redirect(
              mockGoRouterState.namedLocation,
              mockGoRouterState,
            ),
            '/register',
          );
          verify(mockGoRouterState.namedLocation('register_user_data'));
        },
      );

      test(
        'Signed In User => Should Authenticate',
        () async {
          _setUpAuthService(currentUser: _fakeUser);

          _setUpLocalAuth();

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

          expect(
            AuthenticateScreen.redirect(
              mockGoRouterState.namedLocation,
              mockGoRouterState,
            ),
            null,
          );
          verifyNever(mockGoRouterState.namedLocation('login'));
        },
      );

      test(
        'Signed In User => Should not Authenticate (with redirection)',
        () async {
          _setUpAuthService(currentUser: _fakeUser);

          _setUpLocalAuth(shouldAuthenticate: false);

          final mockGoRouterState = MockDummyNamedLocation();
          when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');
          when(mockGoRouterState.queryParams).thenReturn({'next': '/next'});

          expect(
            AuthenticateScreen.redirect(
              mockGoRouterState.namedLocation,
              mockGoRouterState,
            ),
            '/next',
          );
          verifyNever(mockGoRouterState.namedLocation('login'));
        },
      );

      test(
        'Signed In User => Should not Authenticate (without redirection)',
        () async {
          _setUpAuthService(currentUser: _fakeUser);

          _setUpLocalAuth(shouldAuthenticate: false);

          final mockGoRouterState2 = MockDummyNamedLocation();
          when(mockGoRouterState2.namedLocation(captureAny)).thenReturn('/');
          when(mockGoRouterState2.queryParams).thenReturn({});

          expect(
            AuthenticateScreen.redirect(
              mockGoRouterState2.namedLocation,
              mockGoRouterState2,
            ),
            '/',
          );
          verifyNever(mockGoRouterState2.namedLocation('login'));
        },
      );
    },
  );
}

void _setUpLocalAuth({bool shouldAuthenticate = true}) {
  final mockLocalAuthService = MockLocalAuthService();
  when(mockLocalAuthService.shouldAuthenticate).thenReturn(shouldAuthenticate);

  GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);
}

final User _fakeUser = User(
  uid: 'uid',
  name: '',
  password: '',
  permissions: CAPermissionsSet.fromSet(const {}),
  email: 'email',
  authId: 'firebaseAuthUID',
);

MockAuthService _setUpAuthService({
  User? currentUser,
}) {
  final mockAuthService = MockAuthService();

  when(mockAuthService.isSignedIn).thenReturn(currentUser != null);
  if (currentUser != null) {
    when(mockAuthService.currentUser).thenReturn(currentUser);
  }

  GetIt.I.registerSingleton<AuthService>(mockAuthService);

  return mockAuthService;
}

class AuthenticationVariant extends ValueVariant<AuthenticationVariantEnum> {
  AuthenticationVariant() : super(AuthenticationVariantEnum.values.toSet());

  @override
  Future<AuthenticationVariantEnum> setUp(
    AuthenticationVariantEnum value,
  ) async {
    await super.setUp(value);

    _setUpEncryptionService();

    await _setUpAuthService();

    _setUpLocalAuthService(value);

    return value;
  }

  Future<void> _setUpAuthService() async {
    final mock = MockAuthService();
    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        password: '',
        permissions: CAPermissionsSet.fromSet(const {}),
        email: 'email',
        authId: 'firebaseAuthUID',
      ),
    );

    GetIt.I.registerSingleton<AuthService>(mock);

    when(mock.currentUser).thenReturn(
      User(
        uid: 'uid',
        name: '',
        password: await EncryptionService.I.encryptPassword(r'password\1234'),
        permissions: CAPermissionsSet.fromSet(const {}),
        email: 'email',
        authId: 'firebaseAuthUID',
      ),
    );
  }

  void _setUpLocalAuthService(AuthenticationVariantEnum value) {
    final mockLocalAuthService = MockLocalAuthService();

    when(mockLocalAuthService.canCheckBiometrics())
        .thenAnswer((_) async => value == AuthenticationVariantEnum.biometrics);
    when(mockLocalAuthService.authenticate()).thenAnswer((_) async => true);

    GetIt.I.registerSingleton<LocalAuthService>(mockLocalAuthService);
  }

  void _setUpEncryptionService() {
    GetIt.I.registerSingleton<EncryptionService>(FakeEncryptionService());
  }
}

enum AuthenticationVariantEnum { password, biometrics }

void _setUp() {
  _setUpDeviceInfo();
}

void _setUpDeviceInfo() {
  DeviceInfoPlatform.instance = FakeDeviceInfoPlatform();
}

class FakeEncryptionService implements EncryptionService {
  @override
  Future<String> encryptPassword(String password) async =>
      'FakeEncryption:' + password.runes.toList().reversed.join().toUpperCase();

  @override
  Future<HiveCipher> getHiveCipher({String? boxName}) {
    throw UnimplementedError();
  }

  @override
  Future<void> init() async {}
}
