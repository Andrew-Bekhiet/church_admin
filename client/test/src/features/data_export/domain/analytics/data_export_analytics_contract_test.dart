import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('data export analytics contract', () {
    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        ExportSavedFilesLandingShow(savedFileCount: 2),
        'export:landing_show',
        {'landing_view': 'savedFiles', 'saved_file_count': 2},
      ),
      (
        ExportSelectionLandingShow(),
        'export:landing_show',
        {'landing_view': 'selection', 'saved_file_count': 0},
      ),
      (ExportNewExportTap(), 'export:new_export_tap', {}),
      (
        ExportSelectionSearchRun(queryLength: 3),
        'export:selection_search_run',
        {'query_length': 3},
      ),
      (ExportEmptySelectionShow(), 'export:empty_selection_show', {}),
      (
        ExportStart(
          areaCount: 1,
          serviceCount: 2,
          classCount: 3,
          groupCount: 4,
          isScopedToOwn: true,
        ),
        'export:export_start',
        {
          'area_count': 1,
          'service_count': 2,
          'class_count': 3,
          'group_count': 4,
          'is_scoped_to_own': true,
        },
      ),
      (
        ExportFinish(duration: Duration(seconds: 5), isSuccess: true),
        'export:export_finish',
        {'is_success': true, 'duration_ms': 5000},
      ),
      (
        ExportFileOpen(ExportFileOpenSource.savedList),
        'export:file_open',
        {'source': 'savedList'},
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
