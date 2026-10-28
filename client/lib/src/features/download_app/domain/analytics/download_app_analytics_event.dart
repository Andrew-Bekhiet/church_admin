part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DownloadAppAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'download_app';

  const DownloadAppAnalyticsEvent();
}

final class AppDownloadTap extends DownloadAppAnalyticsEvent {
  final DownloadPlatform platform;

  @override
  String get objectAction => 'download_tap';

  @override
  Json get properties => {'platform': platform.name};

  const AppDownloadTap(this.platform);
}

final class AppDownloadLinkFetchFinish extends DownloadAppAnalyticsEvent {
  final DownloadPlatform platform;
  final bool isSuccess;

  @override
  String get objectAction => 'link_fetch_finish';

  @override
  Json get properties => {'platform': platform.name, 'is_success': isSuccess};

  const AppDownloadLinkFetchFinish(this.platform, {required this.isSuccess});
}
