part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class UpdateAnalyticsEvent extends AnalyticsEvent {
  final String currentVersion;
  final String latestVersion;

  @override
  String get category => 'update';

  @override
  Json get properties => {
    'current_version': currentVersion,
    'latest_version': latestVersion,
  };

  const UpdateAnalyticsEvent({
    required this.currentVersion,
    required this.latestVersion,
  });
}

final class UpdateBannerShow extends UpdateAnalyticsEvent {
  final bool hasReleaseNotes;

  @override
  String get objectAction => 'banner_show';

  @override
  Json get properties => {
    ...super.properties,
    'has_release_notes': hasReleaseNotes,
  };

  const UpdateBannerShow({
    required this.hasReleaseNotes,
    required super.currentVersion,
    required super.latestVersion,
  });
}

sealed class UpdatePromptTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  Json get properties => {...super.properties, 'source': source.name};

  const UpdatePromptTap(
    this.source, {
    required super.currentVersion,
    required super.latestVersion,
  });
}

final class UpdateInstallTap extends UpdatePromptTap {
  @override
  String get objectAction => 'install_tap';

  const UpdateInstallTap(
    super.source, {
    required super.currentVersion,
    required super.latestVersion,
  });
}

final class ReleaseNotesTap extends UpdatePromptTap {
  @override
  String get objectAction => 'release_notes_tap';

  const ReleaseNotesTap(
    super.source, {
    required super.currentVersion,
    required super.latestVersion,
  });
}
