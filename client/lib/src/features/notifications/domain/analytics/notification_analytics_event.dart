part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class NotificationAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'notification';

  const NotificationAnalyticsEvent();
}

sealed class NotificationContentEvent extends NotificationAnalyticsEvent {
  final NotificationType notificationType;

  @override
  Json get properties => {'notification_type': notificationType.name};

  NotificationContentEvent(Notification notification)
    : notificationType = notification.type;
}

final class NotificationOpen extends NotificationContentEvent {
  final NotificationOpenSource source;
  final bool hasImage;
  final bool hasQuery;

  @override
  String get objectAction => 'notification_open';

  @override
  Json get properties => {
    ...super.properties,
    'source': source.name,
    'has_image': hasImage,
    'has_query': hasQuery,
  };

  NotificationOpen(super.notification, {required this.source})
    : hasImage = notification.imageURL != null,
      hasQuery = notification.additionalData?['query'] != null;
}

final class NotificationSearchResultsOpen extends NotificationContentEvent {
  @override
  String get objectAction => 'search_results_open';

  NotificationSearchResultsOpen(super.notification);
}

final class NotificationPermissionRequest extends NotificationAnalyticsEvent {
  final PermissionStatus previousPermissionStatus;
  final bool isGranted;

  @override
  String get objectAction => 'permission_request';

  @override
  Json get properties => {
    'previous_permission_status': previousPermissionStatus.name,
    'is_granted': isGranted,
  };

  const NotificationPermissionRequest({
    required this.previousPermissionStatus,
    required this.isGranted,
  });
}

final class NotificationReminderFire extends NotificationAnalyticsEvent {
  final String reminderType;
  final int personCount;
  final bool isSkippedEmpty;

  @override
  String get objectAction => 'reminder_fire';

  @override
  Json get properties => {
    'reminder_type': reminderType,
    'person_count': personCount,
    'is_skipped_empty': isSkippedEmpty,
  };

  const NotificationReminderFire({
    required this.reminderType,
    required this.personCount,
    required this.isSkippedEmpty,
  });
}
