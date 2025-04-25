import 'package:church_admin/church_admin.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';

class FeatureFlagsRepository {
  static FeatureFlagsRepository get I =>
      globalProviderContainer.read(featureFlagsRepoProvider);

  static const String latestVersionKey = 'latestVersion';
  static const String downloadPageURLKey = 'downloadPageURL';
  static const String releaseNotesURLKey = 'releaseNotesURL';
  static const String mustForceUpdateKey = 'mustForceUpdate';
  static const String forceUpdateMessageKey = 'forceUpdateMessage';
  static const String isUnderMaintenanceKey = 'isUnderMaintenance';
  static const String maintenanceMessageKey = 'maintenanceMessage';
  static const String disabledRoutesKey = 'disabledRoutes';

  final FirebaseRemoteConfig _remoteConfig;
  final PackageInfo _packageInfo;

  FeatureFlagsRepository({
    required FirebaseRemoteConfig remoteConfig,
    required PackageInfo packageInfo,
  })  : _packageInfo = packageInfo,
        _remoteConfig = remoteConfig;

  Version get latestVersion =>
      Version.parse(_remoteConfig.getString(latestVersionKey));

  Uri get downloadUrl => Uri.parse(_remoteConfig.getString(downloadPageURLKey));

  Uri? get releaseNotesUrl {
    final rawValue = _remoteConfig.getString(releaseNotesURLKey);

    if (rawValue.isEmpty) {
      return null;
    }

    return Uri.parse(rawValue);
  }

  bool get mustForceUpdate => _remoteConfig.getBool(mustForceUpdateKey);

  String? get forceUpdateMessage {
    final rawValue = _remoteConfig.getString(forceUpdateMessageKey);

    if (rawValue.isEmpty) {
      return null;
    }

    return rawValue;
  }

  bool get isUnderMaintenance => _remoteConfig.getBool(isUnderMaintenanceKey);

  String? get maintenanceMessage {
    final rawValue = _remoteConfig.getString(maintenanceMessageKey);

    if (rawValue.isEmpty) {
      return null;
    }

    return rawValue;
  }

  Set<String> get disabledRoutes {
    final rawValue = _remoteConfig.getString(disabledRoutesKey);

    if (rawValue.isEmpty) {
      return {};
    }

    return rawValue.split(',').toSet();
  }

  Stream<void> get onConfigChanged => kIsWeb
      ? Stream.value(null)
      : _remoteConfig.onConfigUpdated
          .asyncMap((_) => _remoteConfig.fetchAndActivate());

  Future<void> initialize() async {
    await _remoteConfig.fetchAndActivate();

    await _remoteConfig.setDefaults({
      latestVersionKey: _packageInfo.version,
      downloadPageURLKey: 'https://church-data-admin.firebaseapp.com/',
      releaseNotesURLKey:
          'https://github.com/Andrew-Bekhiet/church_admin/releases',
      mustForceUpdateKey: false,
      isUnderMaintenanceKey: false,
      disabledRoutesKey: '',
    });
  }

  Json toJson() => _remoteConfig
      .getAll()
      .map((key, value) => MapEntry(key, value.asString()));
}
