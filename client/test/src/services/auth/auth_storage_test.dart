import 'dart:convert';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_storage_test.mocks.dart';

final expectedKeyBytes =
    Uint8List.fromList([3, 2, 7, 4, 2, 2, 1, 34, 2, 47, 4, 2, 1, 23, 6, 7]);
const expectedHashedPassword = 'randomFakeHash:1234asdfasd';

@GenerateNiceMocks([
  MockSpec<FlutterSecureStorage>(),
  MockSpec<EncryptionService>(),
])
void main() {
  final user = User(
    uid: 'uid',
    name: 'name',
    adminOn: const [
      AdminOnData(permissionId: 'permissionId'),
    ],
    authId: 'authId',
    email: 'email',
    idToken: 'idToken',
    lastEdit: LastRecordedByInfo(
      time: DateTime.now(),
      recordedBy: 'recordedBy',
    ),
    permissions: const PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.manageAllUsers,
      UserPermission.readAllData,
      UserPermission.writeAllData,
      UserPermission.recordHistory,
      UserPermission.changeOldHistory,
      UserPermission.recoverDeleted,
      UserPermission.exportData,
    }),
    photoUpdatedAt: DateTime.now(),
    person: Person(id: 'id', name: 'name'),
  );

  group(
    'Auth Storage =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      test(
        'getUserFromCache',
        () async {
          final mockSecureStorage =
              globalProviderContainer.read(secureStorageProvider);
          final unit = AuthStorage(secureStorage: mockSecureStorage);

          when(mockSecureStorage.read(key: 'User'))
              .thenAnswer((_) async => jsonEncode(user.toJson()));

          expect(unit.getUserFromCache(), completion(user));

          when(mockSecureStorage.read(key: 'User'))
              .thenAnswer((_) async => null);

          expect(unit.getUserFromCache(), completion(isNull));
        },
      );

      test(
        'writeUserToCache',
        () async {
          final mockSecureStorage =
              globalProviderContainer.read(secureStorageProvider);
          final unit = AuthStorage(secureStorage: mockSecureStorage);

          await unit.writeUserToCache(user);
          verify(
            mockSecureStorage.write(
              key: 'User',
              value: jsonEncode(user.toJson()),
            ),
          );

          await unit.writeUserToCache(null);
          verify(
            mockSecureStorage.write(key: 'User', value: null),
          );
        },
      );

      test(
        'serialization consistency',
        () async {
          final mockSecureStorage =
              globalProviderContainer.read(secureStorageProvider);
          final unit = AuthStorage(secureStorage: mockSecureStorage);

          when(mockSecureStorage.read(key: 'User')).thenAnswer(
            (_) async => jsonEncode(user.toJson()).replaceFirst('{', '{ '),
          );

          final read1 = await unit.getUserFromCache();

          await unit.writeUserToCache(read1);

          final read2 = await unit.getUserFromCache();

          expect(read2, read1);
        },
      );

      group(
        'passwordHash =>',
        () {
          test(
            'getPasswordHash',
            () async {
              final mockSecureStorage =
                  globalProviderContainer.read(secureStorageProvider);
              final unit = AuthStorage(secureStorage: mockSecureStorage);

              expect(await unit.getPasswordHash(), 'passwordHash');

              verify(mockSecureStorage.read(key: 'passwordHash'));
            },
          );

          test(
            'saveUserPasswordHash: saved',
            () async {
              final mockSecureStorage =
                  globalProviderContainer.read(secureStorageProvider);
              final mockEncryptionService =
                  globalProviderContainer.read(encryptionServiceProvider);

              final unit = AuthStorage(secureStorage: mockSecureStorage);

              await unit.saveUserPasswordHash('email', 'password');

              verifyInOrder([
                mockSecureStorage.containsKey(key: 'passwordHash'),
                mockEncryptionService.deriveKey(
                  password: 'password',
                  salt: 'email',
                ),
                mockEncryptionService.hashPassword(
                  password: 'password',
                  keyBytes: expectedKeyBytes,
                ),
                mockSecureStorage.write(
                  key: 'passwordHash',
                  value: expectedHashedPassword,
                ),
              ]);
            },
          );

          test(
            'saveUserPasswordHash: ignored',
            () async {
              final mockSecureStorage = globalProviderContainer
                  .read(secureStorageProvider) as MockFlutterSecureStorage;
              final mockEncryptionService = globalProviderContainer
                  .read(encryptionServiceProvider) as MockEncryptionService;

              when(mockSecureStorage.containsKey(key: 'passwordHash'))
                  .thenAnswer((_) async => true);

              final unit = AuthStorage(secureStorage: mockSecureStorage);

              await unit.saveUserPasswordHash('email', 'password');

              verify(mockSecureStorage.containsKey(key: 'passwordHash'));
              verifyNever(
                mockEncryptionService.deriveKey(
                  password: anyNamed('password'),
                  salt: anyNamed('salt'),
                ),
              );
              verifyNever(
                mockEncryptionService.hashPassword(
                  password: anyNamed('password'),
                  keyBytes: anyNamed('keyBytes'),
                ),
              );
              verifyNever(
                mockSecureStorage.write(
                  key: anyNamed('key'),
                  value: anyNamed('value'),
                ),
              );
            },
          );

          test(
            'clearPasswordHash',
            () async {
              final mockSecureStorage =
                  globalProviderContainer.read(secureStorageProvider);
              final unit = AuthStorage(secureStorage: mockSecureStorage);

              await unit.clearPasswordHash();

              verify(mockSecureStorage.delete(key: 'passwordHash'));
            },
          );
        },
      );
    },
  );
}

Future<void> _setUp() async {
  final overrides = [
    _setUpMockFlutterSecureStorage(),
    _setUpMockEncryptionService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpMockFlutterSecureStorage() {
  final mock = MockFlutterSecureStorage();

  when(mock.read(key: anyNamed('key')))
      .thenAnswer((_) async => _.namedArguments[#key]);

  return secureStorageProvider.overrideWithValue(mock);
}

Override _setUpMockEncryptionService() {
  final mock = MockEncryptionService();

  when(mock.deriveKey(password: anyNamed('password'), salt: anyNamed('salt')))
      .thenAnswer((_) async => expectedKeyBytes);
  when(
    mock.hashPassword(
      password: anyNamed('password'),
      keyBytes: anyNamed('keyBytes'),
    ),
  ).thenAnswer((_) async => expectedHashedPassword);

  return encryptionServiceProvider.overrideWithValue(mock);
}
