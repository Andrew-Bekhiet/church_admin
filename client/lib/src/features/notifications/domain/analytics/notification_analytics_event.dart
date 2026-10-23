import 'package:church_admin/church_admin.dart';
import 'package:permission_handler/permission_handler.dart';

sealed class NotificationAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'notification';

  const NotificationAnalyticsEvent();
}

final class NotificationOpen extends NotificationAnalyticsEvent {
  final NotificationOpenSource source;
  final NotificationType notificationType;
  final bool hasImage;
  final bool hasQuery;

  @override
  String get objectAction => 'notification_open';

  @override
  Json get properties => {
    'source': source.name,
    'notification_type': notificationType.name,
    'has_image': hasImage,
    'has_query': hasQuery,
  };

  NotificationOpen(Notification notification, {required this.source})
    : notificationType = notification.type,
      hasImage = notification.imageURL != null,
      hasQuery = notification.additionalData?['query'] != null;
}

final class NotificationSearchResultsOpen extends NotificationAnalyticsEvent {
  final NotificationType notificationType;

  @override
  String get objectAction => 'search_results_open';

  @override
  Json get properties => {'notification_type': notificationType.name};

  NotificationSearchResultsOpen(Notification notification)
    : notificationType = notification.type;
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

enum NotificationOpenSource { coldStart, fcmOpenedApp, localTap }
