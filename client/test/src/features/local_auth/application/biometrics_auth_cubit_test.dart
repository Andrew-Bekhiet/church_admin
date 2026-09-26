import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _LocalAuthService extends Mock implements LocalAuthService {
  bool isLocked = true;
  String? unlockedPath;

  @override
  void resetAuthState({String? path}) {
    isLocked = false;
    unlockedPath = path;
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

void main() {
  late _LocalAuthService localAuthService;
  late _MockAuthRepository authRepository;
  late _MockAuthStorage authStorage;

  setUp(() {
    localAuthService = _LocalAuthService();
    authRepository = _MockAuthRepository();
    authStorage = _MockAuthStorage();
    when(() => authRepository.currentUserEmail).thenReturn('user@example.com');
    when(
      () => authStorage.getPasswordHash(),
    ).thenAnswer((_) async => 'correct:user@example.com');
  });

  BiometricsAuthCubit createCubit({String? next}) {
    final cubit = BiometricsAuthCubit(
      localAuthService: localAuthService,
      authRepository: authRepository,
      authStorage: authStorage,
      encryptionService: _PasswordEncryptionService(),
      next: next,
    );
    addTearDown(cubit.close);

    return cubit;
  }

  test('available biometrics remain offered after a canceled prompt', () async {
    when(
      () => localAuthService.canCheckBiometrics(),
    ).thenAnswer((_) async => true);
    when(() => localAuthService.authenticate()).thenAnswer((_) async => false);
    final cubit = createCubit();

    await cubit.initialize();
    await cubit.authenticateBiometrically();

    expect(cubit.state, isA<BiometricsAuthReady>());
    expect(cubit.state.canCheckBiometrics, isTrue);
  });

  test(
    'initializing leaves the app locked until biometrics are requested',
    () async {
      when(
        () => localAuthService.canCheckBiometrics(),
      ).thenAnswer((_) async => true);
      when(() => localAuthService.authenticate()).thenAnswer((_) async => true);
      final cubit = createCubit();

      await cubit.initialize();

      expect(localAuthService.isLocked, isTrue);
    },
  );

  test('a wrong password shows an error and permits another attempt', () async {
    final cubit = createCubit();

    await cubit.submitPassword('wrong');

    expect(cubit.state, isA<BiometricsAuthWrongPassword>());
    expect(localAuthService.isLocked, isTrue);

    cubit.clearError();

    expect(cubit.state, isA<BiometricsAuthReady>());
  });

  test('the correct password unlocks local authentication', () async {
    final cubit = createCubit();

    await cubit.submitPassword('correct');

    expect(localAuthService.isLocked, isFalse);
  });

  test('a correct password unlocks the requested path', () async {
    final cubit = createCubit(next: '/manage_users');

    await cubit.submitPassword('correct');

    expect(localAuthService.unlockedPath, '/manage_users');
  });

  test('successful biometrics unlock the requested path', () async {
    when(
      () => localAuthService.canCheckBiometrics(),
    ).thenAnswer((_) async => true);
    when(() => localAuthService.authenticate()).thenAnswer((_) async => true);
    final cubit = createCubit(next: '/manage_users');

    await cubit.initialize();
    await cubit.authenticateBiometrically();

    expect(localAuthService.unlockedPath, '/manage_users');
  });

  test('unavailable password storage shows a retryable error', () async {
    when(
      () => authStorage.getPasswordHash(),
    ).thenThrow(PlatformException(code: 'unavailable'));
    final cubit = createCubit();

    await cubit.submitPassword('correct');

    expect(cubit.state, isA<BiometricsAuthFailure>());
    expect(localAuthService.isLocked, isTrue);

    cubit.clearError();

    expect(cubit.state, isA<BiometricsAuthReady>());
  });

  test('a missing signed-in email shows a retryable error', () async {
    when(() => authRepository.currentUserEmail).thenReturn(null);
    final cubit = createCubit();

    await cubit.submitPassword('correct');

    expect(cubit.state, isA<BiometricsAuthFailure>());
    expect(localAuthService.isLocked, isTrue);
  });
}
