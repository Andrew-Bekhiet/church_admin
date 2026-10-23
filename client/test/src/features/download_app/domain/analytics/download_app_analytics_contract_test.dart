import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('download app analytics contract', () {
    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        AppDownloadTap(DownloadPlatform.android),
        'download_app:download_tap',
        {'platform': 'android'},
      ),
      (
        AppDownloadLinkFetchFinish(DownloadPlatform.ios, isSuccess: false),
        'download_app:link_fetch_finish',
        {'platform': 'ios', 'is_success': false},
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
