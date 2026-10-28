part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataExportAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'export';

  const DataExportAnalyticsEvent();
}

sealed class ExportLandingShow extends DataExportAnalyticsEvent {
  final String landingView;
  final int savedFileCount;

  @override
  String get objectAction => 'landing_show';

  @override
  Json get properties => {
    'landing_view': landingView,
    'saved_file_count': savedFileCount,
  };

  const ExportLandingShow(this.landingView, {required this.savedFileCount});
}

final class ExportSavedFilesLandingShow extends ExportLandingShow {
  const ExportSavedFilesLandingShow({required super.savedFileCount})
    : super('savedFiles');
}

final class ExportSelectionLandingShow extends ExportLandingShow {
  const ExportSelectionLandingShow() : super('selection', savedFileCount: 0);
}

final class ExportNewExportTap extends DataExportAnalyticsEvent {
  @override
  String get objectAction => 'new_export_tap';

  const ExportNewExportTap();
}

final class ExportSelectionSearchRun extends DataExportAnalyticsEvent {
  final int queryLength;

  @override
  String get objectAction => 'selection_search_run';

  @override
  Json get properties => {'query_length': queryLength};

  const ExportSelectionSearchRun({required this.queryLength});
}

final class ExportEmptySelectionShow extends DataExportAnalyticsEvent {
  @override
  String get objectAction => 'empty_selection_show';

  const ExportEmptySelectionShow();
}

final class ExportStart extends DataExportAnalyticsEvent {
  final int areaCount;
  final int serviceCount;
  final int classCount;
  final int groupCount;
  final bool isScopedToOwn;

  @override
  String get objectAction => 'export_start';

  @override
  Json get properties => {
    'area_count': areaCount,
    'service_count': serviceCount,
    'class_count': classCount,
    'group_count': groupCount,
    'is_scoped_to_own': isScopedToOwn,
  };

  const ExportStart({
    required this.areaCount,
    required this.serviceCount,
    required this.classCount,
    required this.groupCount,
    required this.isScopedToOwn,
  });
}

final class ExportFinish extends DataExportAnalyticsEvent {
  final Duration duration;
  final bool isSuccess;

  @override
  String get objectAction => 'export_finish';

  @override
  Json get properties => {
    'is_success': isSuccess,
    'duration_ms': duration.inMilliseconds,
  };

  const ExportFinish({required this.duration, required this.isSuccess});
}

final class ExportFileOpen extends DataExportAnalyticsEvent {
  final ExportFileOpenSource source;

  @override
  String get objectAction => 'file_open';

  @override
  Json get properties => {'source': source.name};

  const ExportFileOpen(this.source);
}
