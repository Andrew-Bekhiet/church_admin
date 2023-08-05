import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hive_init_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<HiveInterface>(),
    MockSpec<PathProviderPlatform>(as: #MockPathProviderPlatform_),
    MockSpec<FlutterSecureStorage>(),
    MockSpec<EncryptionService>(),
  ],
)
void main() {
  group(
    'HiveInit',
    () {
      final mockHiveInterface = MockHiveInterface();

      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      test(
        'initHiveDir',
        () async {
          const unit = HiveInit();

          PathProviderPlatform.instance = MockPathProviderPlatform();

          when(PathProviderPlatform.instance.getApplicationDocumentsPath())
              .thenAnswer((_) async => 'path');

          await unit.initHiveDir(mockHiveInterface);

          verify(mockHiveInterface.init('path/church_admin'));
        },
      );

      test(
        'registerAdapters',
        () {
          const HiveInit().registerAdapters(mockHiveInterface);

          verify(mockHiveInterface.registerAdapter(any))
              .called(greaterThanOrEqualTo(1));
        },
      );

      test(
        'openBoxes',
        () async {
          const unit = HiveInit();

          await unit.openBoxes(mockHiveInterface);

          verifyInOrder([
            mockHiveInterface.openBox<Map?>(
              'GQLCache',
              encryptionCipher: anyNamed('encryptionCipher'),
            ),
            mockHiveInterface.openBox('Settings'),
            mockHiveInterface.openBox<String>(
              'ImageUrlsCache',
              encryptionCipher: anyNamed('encryptionCipher'),
            ),
            mockHiveInterface.openLazyBox<Notification>('Notifications'),
            mockHiveInterface
                .openBox<NotificationSetting>('NotificationsSettings'),
          ]);
        },
      );
    },
  );
}

void _setUp() {
  initGlobalProviderContainer([
    _setUpMockSecureStorage(),
    _setUpMockEncryptionService(),
  ]);
}

Override _setUpMockSecureStorage() {
  final mockFlutterSecureStorage = MockFlutterSecureStorage();

  final Map<String, String> localStorage = {};

  when(
    mockFlutterSecureStorage.write(
      key: anyNamed('key'),
      value: anyNamed('value'),
    ),
  ).thenAnswer(
    (invocation) async =>
        localStorage[invocation.namedArguments[#key] as String] =
            invocation.namedArguments[#value] as String,
  );
  when(mockFlutterSecureStorage.read(key: anyNamed('key'))).thenAnswer(
    (invocation) async =>
        localStorage[invocation.namedArguments[#key] as String],
  );

  return secureStorageProvider.overrideWithValue(mockFlutterSecureStorage);
}

Override _setUpMockEncryptionService() {
  final mockEncryptionService = MockEncryptionService();

  when(mockEncryptionService.getHiveCipher(boxName: anyNamed('boxName')))
      .thenAnswer(
    (_) async => HiveAesCipher(List.generate(32, (index) => index)),
  );

  return encryptionServiceProvider.overrideWithValue(mockEncryptionService);
}

class MockPathProviderPlatform extends MockPathProviderPlatform_
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {}
