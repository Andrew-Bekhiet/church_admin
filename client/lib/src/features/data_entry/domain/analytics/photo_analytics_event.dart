part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

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

final class PhotoFullscreenOpen extends PhotoAnalyticsEvent {
  final Json entityProperties;

  @override
  String get objectAction => 'fullscreen_open';

  @override
  Json get properties => entityProperties;

  PhotoFullscreenOpen(Object entity)
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}
