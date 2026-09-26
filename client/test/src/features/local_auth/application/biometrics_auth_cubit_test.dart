import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockLocalAuthService extends Mock implements LocalAuthService {}

void main() {
  test('initialize_whenBiometricsAreUnavailable_hidesBiometrics', () async {
    final localAuthService = _MockLocalAuthService();
    when(localAuthService.canCheckBiometrics).thenAnswer((_) async => false);
    final cubit = BiometricsAuthCubit(localAuthService: localAuthService);
    addTearDown(cubit.close);

    await cubit.initialize();

    expect(cubit.state.canCheckBiometrics, isFalse);
    expect(cubit.state.isAuthenticating, isFalse);
  });

  test('submitPassword_whenInvalid_emitsWrongPassword', () async {
    final localAuthService = _MockLocalAuthService();
    when(
      () => localAuthService.verifyPassword('wrong'),
    ).thenAnswer((_) async => false);
    final cubit = BiometricsAuthCubit(localAuthService: localAuthService);
    addTearDown(cubit.close);

    await cubit.submitPassword('wrong');

    expect(cubit.state.wrongPassword, isTrue);
    expect(cubit.state.isAuthenticating, isFalse);
  });

  test('submitPassword_whenStorageFails_allowsRetry', () async {
    final localAuthService = _MockLocalAuthService();
    when(
      () => localAuthService.verifyPassword('password'),
    ).thenThrow(PlatformException(code: 'unavailable'));
    final cubit = BiometricsAuthCubit(localAuthService: localAuthService);
    addTearDown(cubit.close);

    await cubit.submitPassword('password');

    expect(cubit.state.authenticationFailed, isTrue);
    expect(cubit.state.isAuthenticating, isFalse);
  });
}
