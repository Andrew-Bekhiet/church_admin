import 'package:church_admin/church_admin.dart';

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

final class UpdateNowTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  String get objectAction => 'update_now_tap';

  @override
  Json get properties => {'source': source.name};

  const UpdateNowTap(this.source);
}

final class ReleaseNotesTap extends UpdateAnalyticsEvent {
  final UpdatePromptSource source;

  @override
  String get objectAction => 'release_notes_tap';

  @override
  Json get properties => {'source': source.name};

  const ReleaseNotesTap(this.source);
}

enum UpdatePromptSource { banner, forceUpdateScreen, outdatedFeatureScreen }
