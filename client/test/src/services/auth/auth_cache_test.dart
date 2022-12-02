import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_cache_test.mocks.dart';

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
    password: 'password',
    lastEdit: LastRecordedByInfo(
      time: DateTime.now(),
      recordedBy: 'recordedBy',
    ),
    permissions: CAPermissionsSet.fromSet(const {
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

  tearDown(GetIt.I.reset);
  test(
    'Auth Cache => getUserFromCache',
    () async {
      final mockSecureStorage = GetIt.I<FlutterSecureStorage>();
      final unit = AuthCache();

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
      final mockSecureStorage = GetIt.I<FlutterSecureStorage>();
      final unit = AuthCache();

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
      final mockSecureStorage = GetIt.I<FlutterSecureStorage>();
      final unit = AuthCache();

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
  _setUpMockFlutterSecureStorage();
}

void _setUpMockFlutterSecureStorage() {
  GetIt.I.registerSingleton<FlutterSecureStorage>(MockFlutterSecureStorage());
}
