import 'dart:async';
import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _LocalAuthService extends Mock implements LocalAuthService {
  bool isLocked = true;
  AppRoute? unlockedRoute;

  @override
  void resetAuthState({AppRoute? route}) {
    isLocked = false;
    unlockedRoute = route;
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
  late RecordingAnalyticsProvider analytics;

  setUp(() {
    analytics = RecordingAnalyticsProvider();
    localAuthService = _LocalAuthService();
    authRepository = _MockAuthRepository();
    authStorage = _MockAuthStorage();
    when(() => authRepository.currentUserEmail).thenReturn('user@example.com');
    when(
      () => authStorage.getPasswordHash(),
    ).thenAnswer((_) async => 'correct:user@example.com');
  });

  BiometricsAuthCubit buildCubit({AppRoute? next}) => BiometricsAuthCubit(
    localAuthService: localAuthService,
    authRepository: authRepository,
    authStorage: authStorage,
    encryptionService: _PasswordEncryptionService(),
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    next: next,
  );

  BiometricsAuthCubit createCubit({AppRoute? next}) {
    final cubit = buildCubit(next: next);
    addTearDown(cubit.close);

    return cubit;
  }

  blocTest<BiometricsAuthCubit, BiometricsAuthState>(
    'a dismissed biometric prompt is tracked as not authenticated',
    setUp: () {
      when(
        () => localAuthService.canCheckBiometrics(),
      ).thenAnswer((_) async => true);
      when(
        () => localAuthService.authenticate(),
      ).thenAnswer((_) async => false);
    },
    build: buildCubit,
    act: (cubit) async {
      await cubit.initialize();
      await cubit.authenticateBiometrically();
    },
    verify: (_) => expect(
      analytics.trackedEventsOf<BiometricsUnlockSubmit>().single,
      isA<BiometricsUnlockSubmit>().having(
        (event) => event.outcome,
        'outcome',
        UnlockOutcome.notAuthenticated,
      ),
    ),
  );

  blocTest<BiometricsAuthCubit, BiometricsAuthState>(
    'unlocking with the password is tracked as unlocked',
    build: buildCubit,
    act: (cubit) => cubit.submitPassword('correct'),
    verify: (_) => expect(
      analytics.trackedEventsOf<PasswordUnlockSubmit>().single,
      isA<PasswordUnlockSubmit>()
          .having((event) => event.outcome, 'outcome', UnlockOutcome.unlocked)
          .having(
            (event) => event.canCheckBiometrics,
            'canCheckBiometrics',
            false,
          ),
    ),
  );

  blocTest<BiometricsAuthCubit, BiometricsAuthState>(
    'a wrong password is tracked as such',
    build: buildCubit,
    act: (cubit) => cubit.submitPassword('wrong'),
    verify: (_) => expect(
      analytics.trackedEventsOf<PasswordUnlockSubmit>().single,
      isA<PasswordUnlockSubmit>().having(
        (event) => event.outcome,
        'outcome',
        UnlockOutcome.wrongPassword,
      ),
    ),
  );

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

  test('a correct password unlocks the requested route', () async {
    final cubit = createCubit(next: const ManageUsersRoute());

    await cubit.submitPassword('correct');

    expect(localAuthService.unlockedRoute, const ManageUsersRoute());
  });

  test('successful biometrics unlock the requested route', () async {
    when(
      () => localAuthService.canCheckBiometrics(),
    ).thenAnswer((_) async => true);
    when(() => localAuthService.authenticate()).thenAnswer((_) async => true);
    final cubit = createCubit(next: const ManageUsersRoute());

    await cubit.initialize();
    await cubit.authenticateBiometrically();

    expect(localAuthService.unlockedRoute, const ManageUsersRoute());
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

  test('a biometric prompt finishing after close is not tracked', () async {
    final prompt = Completer<bool>();
    when(() => localAuthService.authenticate())
        .thenAnswer((_) => prompt.future);
    final cubit = buildCubit();

    final attempt = cubit.authenticateBiometrically();
    await cubit.close();
    prompt.complete(true);
    await attempt;

    expect(analytics.trackedEventsOf<BiometricsUnlockSubmit>(), isEmpty);
  });

  test('a failed biometric prompt after close is not tracked', () async {
    final prompt = Completer<bool>();
    when(() => localAuthService.authenticate())
        .thenAnswer((_) => prompt.future);
    final cubit = buildCubit();

    final attempt = cubit.authenticateBiometrically();
    await cubit.close();
    prompt.completeError(PlatformException(code: 'unavailable'));
    await attempt;

    expect(analytics.trackedEventsOf<BiometricsUnlockSubmit>(), isEmpty);
  });

  test('a password check finishing after close is not tracked', () async {
    final passwordHash = Completer<String?>();
    when(
      () => authStorage.getPasswordHash(),
    ).thenAnswer((_) => passwordHash.future);
    final cubit = buildCubit();

    final attempt = cubit.submitPassword('correct');
    await cubit.close();
    passwordHash.complete('correct:user@example.com');
    await attempt;

    expect(analytics.trackedEventsOf<PasswordUnlockSubmit>(), isEmpty);
  });

  test('a failed password check after close is not tracked', () async {
    final passwordHash = Completer<String?>();
    when(
      () => authStorage.getPasswordHash(),
    ).thenAnswer((_) => passwordHash.future);
    final cubit = buildCubit();

    final attempt = cubit.submitPassword('correct');
    await cubit.close();
    passwordHash.completeError(PlatformException(code: 'unavailable'));
    await attempt;

    expect(analytics.trackedEventsOf<PasswordUnlockSubmit>(), isEmpty);
  });
}
