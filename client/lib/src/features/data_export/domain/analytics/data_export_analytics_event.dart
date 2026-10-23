import 'package:church_admin/church_admin.dart';

sealed class DataExportAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'export';

  const DataExportAnalyticsEvent();
}

final class ExportLandingView extends DataExportAnalyticsEvent {
  final ExportLanding landing;
  final int savedFileCount;

  @override
  String get objectAction => 'landing_view';

  @override
  Json get properties => {
    'landing': landing.name,
    'saved_file_count': savedFileCount,
  };

  const ExportLandingView(this.landing, {required this.savedFileCount});
}

final class ExportNewExportTap extends DataExportAnalyticsEvent {
  @override
  String get objectAction => 'new_export_tap';

  const ExportNewExportTap();
}

final class ExportSelectionSearchSubmit extends DataExportAnalyticsEvent {
  final int queryLength;

  @override
  String get objectAction => 'selection_search_submit';

  @override
  Json get properties => {'query_length': queryLength};

  const ExportSelectionSearchSubmit({required this.queryLength});
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
  String get objectAction => 'start';

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

final class ExportFileDownload extends DataExportAnalyticsEvent {
  final Duration duration;
  final bool isSuccess;

  @override
  String get objectAction => 'file_download';

  @override
  Json get properties => {
    'is_success': isSuccess,
    'duration_seconds': duration.inSeconds,
  };

  const ExportFileDownload({required this.duration, required this.isSuccess});
}

final class ExportFileOpen extends DataExportAnalyticsEvent {
  final ExportFileOpenSource source;

  @override
  String get objectAction => 'file_open';

  @override
  Json get properties => {'source': source.name};

  const ExportFileOpen(this.source);
}

enum ExportLanding { savedFiles, selection }

enum ExportFileOpenSource { completedScreen, savedList }
