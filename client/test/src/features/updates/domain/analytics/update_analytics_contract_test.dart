import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('update analytics contract', () {
    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        UpdateBannerShow(hasReleaseNotes: true),
        'update:banner_show',
        {'has_release_notes': true},
      ),
      (
        UpdateInstallTap(UpdatePromptSource.forceUpdateScreen),
        'update:install_tap',
        {'source': 'forceUpdateScreen'},
      ),
      (
        ReleaseNotesTap(UpdatePromptSource.outdatedFeatureScreen),
        'update:release_notes_tap',
        {'source': 'outdatedFeatureScreen'},
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
