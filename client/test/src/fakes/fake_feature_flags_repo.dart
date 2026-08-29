import 'package:church_admin/church_admin.dart';
import 'package:pub_semver/pub_semver.dart';

class FakeFeatureFlagsRepo implements FeatureFlagsRepository {
  @override
  Future<void> initialize() async {}

  @override
  Set<String> get disabledRoutes => {};

  @override
  Uri get downloadUrl => Uri.base;

  @override
  String? get forceUpdateMessage => null;

  @override
  bool get isUnderMaintenance => false;

  @override
  bool get enablePersonNationalId => false;

  @override
  Version get latestVersion => Version(0, 0, 0);

  @override
  String? get maintenanceMessage => null;

  @override
  bool get mustForceUpdate => false;

  @override
  bool get useSentryLogs => true;

  @override
  bool get enableSentry => true;

  @override
  bool get enablePostHog => true;

  @override
  bool get enablePostHogLogs => true;

  @override
  double get postHogReplaySampleRate => 1;

  @override
  LoggingSettings get loggingSettings => LoggingSettings.defaults;

  @override
  Stream<void> get onConfigChanged => const Stream.empty();

  @override
  Uri? get releaseNotesUrl => null;

  @override
  Json toJson() => {};

  @override
  bool canAddCustomObjects<T>() {
    return true;
  }
}
