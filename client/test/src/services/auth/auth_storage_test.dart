import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_storage_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FlutterSecureStorage>()])
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
    permissions: PermissionsSet.fromSet(const {
      'approved',
      'manageAllUsers',
      'readAllData',
      'writeAllData',
      'recordHistory',
      'changeOldHistory',
      'recoverDeleted',
      'exportData',
    }),
    photoUpdatedAt: DateTime.now(),
    person: Person(id: 'id', name: 'name'),
  );

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);
  test(
    'Auth Cache => getUserFromCache',
    () async {
      final mockSecureStorage =
          globalProviderContainer.read(secureStorageProvider);
      final unit = AuthStorage(secureStorage: mockSecureStorage);

      when(mockSecureStorage.read(key: 'User'))
          .thenAnswer((_) async => jsonEncode(user.toJson()));

      expect(unit.getUserFromCache(), completion(user));

      when(mockSecureStorage.read(key: 'User')).thenAnswer((_) async => null);

      expect(unit.getUserFromCache(), completion(isNull));
    },
  );

  test(
    'Auth Cache => writeUserToCache',
    () async {
      final mockSecureStorage =
          globalProviderContainer.read(secureStorageProvider);
      final unit = AuthStorage(secureStorage: mockSecureStorage);

      await unit.writeUserToCache(user);
      verify(
        mockSecureStorage.write(key: 'User', value: jsonEncode(user.toJson())),
      );

      await unit.writeUserToCache(null);
      verify(
        mockSecureStorage.write(key: 'User', value: null),
      );
    },
  );

  test(
    'Auth Cache => serialization consistency',
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
}

Future<void> _setUp() async {
  final overrides = [_setUpMockFlutterSecureStorage()];
  initGlobalProviderContainer(overrides);
}

Override _setUpMockFlutterSecureStorage() {
  return secureStorageProvider.overrideWithValue(MockFlutterSecureStorage());
}
