import 'package:church_admin/church_admin.dart';

sealed class DownloadAppAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'download_app';

  const DownloadAppAnalyticsEvent();
}

final class AppDownloadTap extends DownloadAppAnalyticsEvent {
  final DownloadPlatform platform;
  final bool isSuccess;

  @override
  String get objectAction => 'download_tap';

  @override
  Json get properties => {'platform': platform.name, 'is_success': isSuccess};

  const AppDownloadTap(this.platform, {required this.isSuccess});
}

enum DownloadPlatform { android, ios }
