import 'package:church_admin/church_admin.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:rxdart/rxdart.dart';

import './feature_flags_repo_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseRemoteConfig>(),
  MockSpec<RemoteConfigUpdate>(),
  MockSpec<PackageInfo>(),
])
void main() {
  group(
    'Feature Flags Repo =>',
    () {
      late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
      late MockPackageInfo mockPackageInfo;

      setUp(() {
        mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
        mockPackageInfo = MockPackageInfo();
      });

      tearDown(resetMockitoState);

      test(
        'Fetches feature flags at initialization',
        () async {
          final repo = FeatureFlagsRepository(
            remoteConfig: mockFirebaseRemoteConfig,
            packageInfo: mockPackageInfo,
          );

          await repo.initialize();

          verify(mockFirebaseRemoteConfig.fetchAndActivate()).called(1);
        },
      );

      test(
        'Fetches feature flags onConfigChanged',
        () async {
          final streamController = BehaviorSubject<void>();

          when(mockFirebaseRemoteConfig.onConfigUpdated).thenAnswer(
            (_) => streamController.stream.mapTo(MockRemoteConfigUpdate()),
          );

          final repo = FeatureFlagsRepository(
            remoteConfig: mockFirebaseRemoteConfig,
            packageInfo: mockPackageInfo,
          );

          await repo.initialize();

          streamController.add(null);
          await repo.onConfigChanged.take(1).first;

          verify(mockFirebaseRemoteConfig.fetchAndActivate()).called(2);

          streamController.add(null);
          await repo.onConfigChanged.take(1).first;
          verify(mockFirebaseRemoteConfig.fetchAndActivate()).called(1);

          await streamController.close();
        },
      );

      test(
        'Can parse feature flags correctly',
        () async {
          when(
            mockFirebaseRemoteConfig.getBool(
              FeatureFlagsRepository.mustForceUpdateKey,
            ),
          ).thenReturn(true);
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.forceUpdateMessageKey,
            ),
          ).thenReturn('force update message');
          when(
            mockFirebaseRemoteConfig.getBool(
              FeatureFlagsRepository.isUnderMaintenanceKey,
            ),
          ).thenReturn(true);
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.maintenanceMessageKey,
            ),
          ).thenReturn('maintenance message');
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.disabledRoutesKey,
            ),
          ).thenReturn('disabledRoute1,disabledRoute2');
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.latestVersionKey,
            ),
          ).thenReturn('2.0.0');
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.downloadPageURLKey,
            ),
          ).thenReturn('https://download.url');
          when(
            mockFirebaseRemoteConfig.getString(
              FeatureFlagsRepository.releaseNotesURLKey,
            ),
          ).thenReturn('https://release.notes.url');

          final repo = FeatureFlagsRepository(
            remoteConfig: mockFirebaseRemoteConfig,
            packageInfo: mockPackageInfo,
          );

          await repo.initialize();

          expect(repo.isUnderMaintenance, isTrue);
          expect(repo.mustForceUpdate, isTrue);
          expect(repo.downloadUrl, Uri.parse('https://download.url'));
          expect(repo.releaseNotesUrl, Uri.parse('https://release.notes.url'));
          expect(repo.forceUpdateMessage, 'force update message');
          expect(repo.maintenanceMessage, 'maintenance message');
          expect(repo.disabledRoutes, {'disabledRoute1', 'disabledRoute2'});
          expect(repo.latestVersion, Version.parse('2.0.0'));
        },
      );
    },
  );
}
