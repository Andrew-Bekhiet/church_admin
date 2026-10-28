part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class MeetingAnalyticsEvent extends AnalyticsEvent {
  final Json meetingProperties;

  @override
  Json get properties => meetingProperties;

  MeetingAnalyticsEvent(Meeting meeting)
    : meetingProperties = {
        'meeting_id': meeting.id,
        if (meeting.serviceId case final serviceId?) 'service_id': serviceId,
        if (meeting.groupId case final groupId?) 'group_id': groupId,
      };
}
