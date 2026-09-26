import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'local_auth_service_test.mocks.dart';

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
  setUp(() {
    final auth = MockAuthBloc();
    when(auth.currentUser).thenReturn(
      const AuthUser(
        uid: 'uid',
        email: 'user@example.com',
        emailVerified: true,
        idToken: 'token',
      ),
    );

    final storage = MockAuthStorage();
    when(
      storage.getPasswordHash(),
    ).thenAnswer((_) async => 'correct:user@example.com');

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(auth),
      authStorageProvider.overrideWithValue(storage),
      encryptionServiceProvider.overrideWithValue(_PasswordEncryptionService()),
      notificationsServiceProvider.overrideWithValue(
        MockNotificationsService(),
      ),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  for (final (password, expected) in [
    ('correct', true),
    ('wrong', false),
  ]) {
    testWidgets('verifyPassword_whenPasswordIs${password}_returns$expected', (
      tester,
    ) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
        userDataWiper: _MockUserDataWiper(),
      );
      addTearDown(unit.dispose);

      expect(await unit.verifyPassword(password), expected);
    });
  }
}

final class _MockUserDataWiper extends Mock implements UserDataWiper {}
