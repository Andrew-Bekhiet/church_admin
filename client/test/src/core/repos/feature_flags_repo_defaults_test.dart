import 'package:church_admin/church_admin.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';

class InMemoryRemoteConfig extends Fake implements FirebaseRemoteConfig {
  final Object? fetchFailure;
  final Map<String, Object> fetchedValues;

  final Map<String, Object> _defaults = {};
  final Map<String, Object> _activeValues = {};

  InMemoryRemoteConfig({this.fetchFailure, this.fetchedValues = const {}});

  @override
  Future<void> setDefaults(Map<String, dynamic> defaultParameters) async {
    _defaults.addAll(defaultParameters.cast<String, Object>());
  }

  @override
  Future<bool> fetchAndActivate() async {
    if (fetchFailure case final failure?) {
      throw failure;
    }

    _activeValues.addAll(fetchedValues);
    return true;
  }

  Object? _valueOf(String key) => _activeValues[key] ?? _defaults[key];

  @override
  bool getBool(String key) => _valueOf(key) == true;

  @override
  String getString(String key) => _valueOf(key)?.toString() ?? '';

  @override
  double getDouble(String key) => (_valueOf(key) as num?)?.toDouble() ?? 0;
}

void main() {
  group('Feature Flags Repo defaults =>', () {
    final packageInfo = PackageInfo(
      appName: 'church_admin',
      packageName: 'org.church.admin',
      version: '1.2.3',
      buildNumber: '4',
    );
    final fetchFailure = Exception('remote config fetch failed');

    test('apply when fetching the remote config fails', () async {
      final repo = FeatureFlagsRepository(
        remoteConfig: InMemoryRemoteConfig(fetchFailure: fetchFailure),
        packageInfo: packageInfo,
      );

      await expectLater(repo.initialize(), throwsA(fetchFailure));

      expect(repo.enableAccountClaimingByEmail, isTrue);
      expect(repo.enableDataChecks, isTrue);
      expect(repo.enableSentry, isTrue);
      expect(repo.enableAnalytics, isFalse);
      expect(repo.latestVersion, Version.parse(packageInfo.version));
      expect(
        repo.downloadUrl,
        Uri.parse('https://church-data-admin.firebaseapp.com/'),
      );
    });

    test('are overridden by fetched values when fetching succeeds', () async {
      final repo = FeatureFlagsRepository(
        remoteConfig: InMemoryRemoteConfig(
          fetchedValues: {
            FeatureFlagsRepository.enableAccountClaimingByEmailKey: false,
            FeatureFlagsRepository.downloadPageURLKey: 'https://download.url',
            FeatureFlagsRepository.enableAnalyticsKey: true,
          },
        ),
        packageInfo: packageInfo,
      );

      await repo.initialize();

      expect(repo.enableAccountClaimingByEmail, isFalse);
      expect(repo.downloadUrl, Uri.parse('https://download.url'));
      expect(repo.enableAnalytics, isTrue);
      expect(repo.enableDataChecks, isTrue);
    });
  });
}
