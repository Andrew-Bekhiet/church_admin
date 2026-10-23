import 'package:church_admin/church_admin.dart';
import 'package:permission_handler/permission_handler.dart';

sealed class NotificationAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'notification';

  const NotificationAnalyticsEvent();
}

final class NotificationOpen extends NotificationAnalyticsEvent {
  final Notification notification;
  final NotificationOpenSource source;

  @override
  String get objectAction => 'open';

  @override
  Json get properties => {
    'source': source.name,
    'notification_type': notification.type.name,
    'has_image': notification.imageURL != null,
    'has_query': notification.additionalData?['query'] != null,
  };

  const NotificationOpen(this.notification, {required this.source});
}

final class NotificationSearchResultsOpen extends NotificationAnalyticsEvent {
  final Notification notification;

  @override
  String get objectAction => 'search_results_open';

  @override
  Json get properties => {'notification_type': notification.type.name};

  const NotificationSearchResultsOpen(this.notification);
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
