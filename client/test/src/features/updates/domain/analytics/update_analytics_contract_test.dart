import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('update analytics contract', () {
    const currentVersion = '1.4.2';
    const latestVersion = '1.5.0';
    const versionProperties = {
      'current_version': currentVersion,
      'latest_version': latestVersion,
    };

    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        UpdateBannerShow(
          hasReleaseNotes: true,
          currentVersion: currentVersion,
          latestVersion: latestVersion,
        ),
        'update:banner_show',
        {...versionProperties, 'has_release_notes': true},
      ),
      (
        UpdateInstallTap(
          UpdatePromptSource.forceUpdateScreen,
          currentVersion: currentVersion,
          latestVersion: latestVersion,
        ),
        'update:install_tap',
        {...versionProperties, 'source': 'forceUpdateScreen'},
      ),
      (
        ReleaseNotesTap(
          UpdatePromptSource.outdatedFeatureScreen,
          currentVersion: currentVersion,
          latestVersion: latestVersion,
        ),
        'update:release_notes_tap',
        {...versionProperties, 'source': 'outdatedFeatureScreen'},
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      test('$expectedName sends ${expectedProperties.keys.join(', ')}', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
