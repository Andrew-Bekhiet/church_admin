part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DownloadAppAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'download_app';

  const DownloadAppAnalyticsEvent();
}

sealed class AppDownloadEvent extends DownloadAppAnalyticsEvent {
  final DownloadPlatform platform;

  @override
  Json get properties => {'platform': platform.name};

  const AppDownloadEvent(this.platform);
}

final class AppDownloadTap extends AppDownloadEvent {
  @override
  String get objectAction => 'download_tap';

  const AppDownloadTap(super.platform);
}

final class AppDownloadLinkFetchFinish extends AppDownloadEvent {
  final bool isSuccess;

  @override
  String get objectAction => 'link_fetch_finish';

  @override
  Json get properties => {...super.properties, 'is_success': isSuccess};

  const AppDownloadLinkFetchFinish(super.platform, {required this.isSuccess});
}
