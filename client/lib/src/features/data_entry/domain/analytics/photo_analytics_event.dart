import 'package:church_admin/church_admin.dart';

sealed class PhotoAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'photo';

  const PhotoAnalyticsEvent();
}

final class PhotoPick extends PhotoAnalyticsEvent {
  final ImageSource source;
  final PhotoPickOutcome outcome;

  @override
  String get objectAction => 'pick';

  @override
  Json get properties => {'source': source.name, 'outcome': outcome.name};

  const PhotoPick(this.source, this.outcome);
}

final class PhotoDelete extends PhotoAnalyticsEvent {
  @override
  String get objectAction => 'delete';

  const PhotoDelete();
}

final class PhotoFullscreenOpen extends PhotoAnalyticsEvent {
  final Object entity;

  @override
  String get objectAction => 'fullscreen_open';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const PhotoFullscreenOpen(this.entity);
}

enum PhotoPickOutcome {
  picked,
  cameraPermissionDenied,
  pickCancelled,
  cropCancelled,
}
