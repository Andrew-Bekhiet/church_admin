import 'package:church_admin/church_admin.dart';

class DefaultMeetingSaveCubit<T extends ViewableWithIDAndImage>
    extends ObjectSaveCubit<T> {
  final DefaultMeetingOwner<T> _meetingOwner;
  final MeetingsDAO _meetings;

  DefaultMeetingSaveCubit({
    required this._meetingOwner,
    required this._meetings,
    required super.form,
    required super.dao,
    required super.photoUploader,
  });

  @override
  Future<T> create(T object) async {
    final created = await super.create(object);
    final meeting = _meetingOwner.draftDefaultMeetingOf(created);
    if (meeting == null) return created;

    final savedMeeting = await _meetings.createObject(newObject: meeting);
    final withMeeting = _meetingOwner.withDefaultMeeting(created, savedMeeting);

    return await update(created, withMeeting) ?? withMeeting;
  }
}
