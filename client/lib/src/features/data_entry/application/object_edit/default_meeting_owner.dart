import 'package:church_admin/church_admin.dart';

abstract interface class DefaultMeetingOwner<T> {
  Meeting? draftDefaultMeetingOf(T created);

  T withEditsAndDefaultMeeting(
    T created, {
    required T edited,
    required Meeting? defaultMeeting,
  });
}
