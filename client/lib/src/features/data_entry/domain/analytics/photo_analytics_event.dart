import 'package:church_admin/church_admin.dart';

sealed class PhotoAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'photo';

  const PhotoAnalyticsEvent();
}

final class PhotoPickAttempt extends PhotoAnalyticsEvent {
  final ImageSource imageSource;
  final PhotoPickOutcome outcome;

  @override
  String get objectAction => 'pick_attempt';

  @override
  Json get properties => {
    'image_source': imageSource.name,
    'outcome': outcome.name,
  };

  const PhotoPickAttempt(this.imageSource, this.outcome);
}

final class PhotoDeleteChoose extends PhotoAnalyticsEvent {
  @override
  String get objectAction => 'delete_choose';

  const PhotoDeleteChoose();
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
