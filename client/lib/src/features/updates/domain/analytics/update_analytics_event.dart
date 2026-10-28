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

sealed class UpdatePromptTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  Json get properties => {'source': source.name};

  const UpdatePromptTap(this.source);
}

final class UpdateInstallTap extends UpdatePromptTap {
  @override
  String get objectAction => 'install_tap';

  const UpdateInstallTap(super.source);
}

final class ReleaseNotesTap extends UpdatePromptTap {
  @override
  String get objectAction => 'release_notes_tap';

  const ReleaseNotesTap(super.source);
}
