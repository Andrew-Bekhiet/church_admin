part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class UpdateAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'update';

  const UpdateAnalyticsEvent();
}

final class UpdateBannerShow extends UpdateAnalyticsEvent {
  final bool hasReleaseNotes;

  @override
  String get objectAction => 'banner_show';

  @override
  Json get properties => {'has_release_notes': hasReleaseNotes};

  const UpdateBannerShow({required this.hasReleaseNotes});
}

final class UpdateInstallTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  String get objectAction => 'install_tap';

  @override
  Json get properties => {'source': source.name};

  const UpdateInstallTap(this.source);
}

final class ReleaseNotesTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  String get objectAction => 'release_notes_tap';

  @override
  Json get properties => {'source': source.name};

  const ReleaseNotesTap(this.source);
}
