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
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:spot/spot.dart';

import '../../../../fakes/fake_device_info.dart';
import '../../../../utils.dart';
import 'biometrics_auth_screen_test.mocks.dart';

const testPassword = r'password\1234';
const email = 'email';
const AuthUser _fakeUser = AuthUser(
  uid: 'uid',
  email: email,
  emailVerified: true,
  idToken: 'idToken',
);

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
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
    'the lock screen shows password entry and available biometric recovery',
    (tester) async {
      await tester.binding.setSurfaceSize(size);

      await tester.pumpWidgetBuilder(
        SizedBox.fromSize(
          size: size,
          child: Builder(
            builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(size: size),
                child: const BiometricsAuthScreen(),
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
        BiometricsAuthScreenKeys.passwordFieldKey,
      ).spot<PasswordFormField>().existsOnce();

      spotKey(BiometricsAuthScreenKeys.submitButtonKey).existsOnce();

      spotKey(BiometricsAuthScreenKeys.biometricsButtonKey)
          .spotFinder(find.bySubtype<FilledButton>())
          .existsExactlyNTimes(
            authVariant.currentValue == AuthenticationVariantEnum.password
                ? 0
                : 1,
          );
    },
    variant: authVariant,
  );

  testWidgets('a wrong password is reported in a dialog, not inline', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(390, 1200));
    await authVariant.setUp(AuthenticationVariantEnum.password);
    await tester.pumpWidgetBuilder(
      SizedBox.fromSize(
        size: size,
        child: Builder(
          builder: (context) => MediaQuery(
            data: MediaQuery.of(context).copyWith(size: size),
            child: const BiometricsAuthScreen(),
          ),
        ),
      ),
      wrapper: materialAppWrapper(),
    );
    await tester.pumpAndSettle();

    await act.enterText(
      spotKey(BiometricsAuthScreenKeys.passwordFieldKey),
      'wrong password',
    );
    await act.tap(spotKey(BiometricsAuthScreenKeys.submitButtonKey));
    await tester.pumpAndSettle();

    spot<AlertDialog>().spotText('كلمة سر خاطئة!').existsOnce();
    expect(find.text('كلمة سر خاطئة!'), findsOneWidget);
  });

  testWidgets(
    'a password check that cannot complete shows inline feedback until the '
    'user retries',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(390, 1200));
      await authVariant.setUp(AuthenticationVariantEnum.password);
      mocktail
          .when(AuthStorage.I.getPasswordHash)
          .thenThrow(Exception('storage unavailable'));
      await tester.pumpWidgetBuilder(
        SizedBox.fromSize(
          size: size,
          child: Builder(
            builder: (context) => MediaQuery(
              data: MediaQuery.of(context).copyWith(size: size),
              child: const BiometricsAuthScreen(),
            ),
          ),
        ),
        wrapper: materialAppWrapper(),
      );
      await tester.pumpAndSettle();

      await act.enterText(
        spotKey(BiometricsAuthScreenKeys.passwordFieldKey),
        testPassword,
      );
      await act.tap(spotKey(BiometricsAuthScreenKeys.submitButtonKey));
      await tester.pumpAndSettle();

      spotKey(
        BiometricsAuthScreenKeys.passwordFieldKey,
      ).spotText('تعذر التحقق، حاول مرة أخرى').existsOnce();

      await act.enterText(
        spotKey(BiometricsAuthScreenKeys.passwordFieldKey),
        'another attempt',
      );

      expect(find.text('تعذر التحقق، حاول مرة أخرى'), findsNothing);
    },
  );

  testWidgets('a pending biometric prompt disables retry until it finishes', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(390, 1200));
    await authVariant.setUp(AuthenticationVariantEnum.biometrics);
    final authCompleter = Completer<bool>();
    when(
      LocalAuthService.I.authenticate(),
    ).thenAnswer((_) async => authCompleter.future);

    await tester.pumpWidgetBuilder(
      SizedBox.fromSize(
        size: size,
        child: Builder(
          builder: (context) => MediaQuery(
            data: MediaQuery.of(context).copyWith(size: size),
            child: const BiometricsAuthScreen(),
          ),
        ),
      ),
      wrapper: materialAppWrapper(),
    );
    await tester.pumpAndSettle();

    final biometricsButton = find.byKey(
      BiometricsAuthScreenKeys.biometricsButtonKey,
    );
    expect(tester.widget<FilledButton>(biometricsButton).onPressed, isNull);

    authCompleter.complete(false);
    await tester.pumpAndSettle();

    expect(tester.widget<FilledButton>(biometricsButton).onPressed, isNotNull);
  });

  testWidgets('the wrong password dialog is visible above an auth overlay', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(390, 1200));
    await authVariant.setUp(AuthenticationVariantEnum.password);
    final overlayController = OverlayPortalController();

    await tester.pumpWidget(
      MaterialApp(
        builder: (context, child) => Directionality(
          textDirection: TextDirection.rtl,
          child: child ?? const SizedBox.shrink(),
        ),
        home: OverlayPortal(
          controller: overlayController,
          overlayChildBuilder: (context) => const BiometricsAuthScreen(),
          child: const Scaffold(),
        ),
      ),
    );
    overlayController.show();
    await tester.pumpAndSettle();

    await act.enterText(
      spotKey(BiometricsAuthScreenKeys.passwordFieldKey),
      'wrong password',
    );
    await act.tap(spotKey(BiometricsAuthScreenKeys.submitButtonKey));
    await tester.pumpAndSettle();

    expect(find.text('كلمة سر خاطئة!').hitTestable(), findsOneWidget);
    expect(
      Directionality.of(tester.element(find.text('كلمة سر خاطئة!'))),
      TextDirection.rtl,
    );
  });
}

class AuthenticationVariant extends ValueVariant<AuthenticationVariantEnum> {
  AuthenticationVariant() : super(AuthenticationVariantEnum.values.toSet());

  @override
  Future<AuthenticationVariantEnum> setUp(
    AuthenticationVariantEnum value,
  ) async {
    await super.setUp(value);

    final overrides = [
      _setUpAuthBloc(),
      _setUpLocalAuthService(value),
      _setUpAuthRepository(),
      _setUpAuthStorage(),
      encryptionServiceProvider.overrideWithValue(_PasswordEncryptionService()),
    ];

    initGlobalProviderContainer(overrides);

    return value;
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

    return localAuthServiceProvider.overrideWithValue(mockLocalAuthService);
  }

  Override _setUpAuthRepository() {
    final authRepository = _AuthRepositoryMock();
    mocktail.when(() => authRepository.currentUserEmail).thenReturn(email);

    return authRepositoryProvider.overrideWithValue(authRepository);
  }

  Override _setUpAuthStorage() {
    final authStorage = _AuthStorageMock();
    mocktail
        .when(
          authStorage.getPasswordHash,
        )
        .thenAnswer((_) async => '$testPassword:$email');

    return authStorageProvider.overrideWithValue(authStorage);
  }
}

class _PasswordEncryptionService extends EncryptionService {
  @override
  Future<Uint8List> deriveKey({
    required String password,
    required String salt,
  }) async => Uint8List.fromList(utf8.encode('$password:$salt'));

  @override
  Future<bool> verifyPassword({
    required String passwordToVerify,
    required Uint8List keyBytes,
    required String? storedPasswordHash,
  }) async => storedPasswordHash == utf8.decode(keyBytes);
}

class _AuthRepositoryMock extends mocktail.Mock implements AuthRepository {}

class _AuthStorageMock extends mocktail.Mock implements AuthStorage {}

enum AuthenticationVariantEnum { password, biometrics }

void _setUp() {
  provideDummy<AuthState>(const AuthUnauthenticated());

  _setUpDeviceInfo();
}

void _setUpDeviceInfo() {
  DeviceInfoPlatform.instance = FakeDeviceInfoPlatform();
}
