import 'package:church_admin/church_admin.dart';

abstract interface class DefaultMeetingOwner<T> {
  Meeting? draftDefaultMeetingOf(T created);

  T withIdAndDefaultMeeting(
    T edited, {
    required String id,
    required Meeting? defaultMeeting,
  });
}
