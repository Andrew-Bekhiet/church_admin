import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('data export analytics contract', () {
    const savedFileCount = 2;
    const searchQueryLength = 3;
    const exportDuration = Duration(seconds: 5);
    const exportStart = ExportStart(
      areaCount: 1,
      serviceCount: 2,
      classCount: 3,
      groupCount: 4,
      isScopedToOwn: true,
    );

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        const ExportSavedFilesLandingShow(savedFileCount: savedFileCount),
        'export:landing_show',
        {'landing_view': 'savedFiles', 'saved_file_count': savedFileCount},
      ),
      (
        const ExportSelectionLandingShow(),
        'export:landing_show',
        {'landing_view': 'selection', 'saved_file_count': 0},
      ),
      (const ExportNewExportTap(), 'export:new_export_tap', {}),
      (
        const ExportSelectionSearchRun(queryLength: searchQueryLength),
        'export:selection_search_run',
        {'query_length': searchQueryLength},
      ),
      (const ExportEmptySelectionShow(), 'export:empty_selection_show', {}),
      (
        exportStart,
        'export:export_start',
        {
          'area_count': exportStart.areaCount,
          'service_count': exportStart.serviceCount,
          'class_count': exportStart.classCount,
          'group_count': exportStart.groupCount,
          'is_scoped_to_own': exportStart.isScopedToOwn,
        },
      ),
      (
        const ExportFinish(duration: exportDuration, isSuccess: true),
        'export:export_finish',
        {'is_success': true, 'duration_ms': exportDuration.inMilliseconds},
      ),
      (
        const ExportFileOpen(ExportFileOpenSource.savedList),
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
