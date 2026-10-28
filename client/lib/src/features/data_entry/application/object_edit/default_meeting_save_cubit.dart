import 'package:church_admin/church_admin.dart';

class DefaultMeetingSaveCubit<T extends ViewableWithIDAndImage>
    extends ObjectSaveCubit<T> {
  final DefaultMeetingOwner<T> _meetingOwner;
  final MeetingsDAO _meetingsDAO;

  T? _createdOwner;
  Meeting? _createdMeeting;

  DefaultMeetingSaveCubit({
    required this._meetingOwner,
    required this._meetingsDAO,
    required super.form,
    required super.dao,
    required super.photoUploader,
    required super.analyticsService,
  });

  @override
  ObjectSaveAttempt saveAttemptOf(
    ObjectSaveOutcome<T> outcome, {
    required ViewableWithID entity,
    required bool isCreate,
    required Duration formOpenDuration,
  }) => switch ((_createdOwner, _createdMeeting)) {
    (null, _) => super.saveAttemptOf(
      outcome,
      entity: entity,
      isCreate: isCreate,
      formOpenDuration: formOpenDuration,
    ),
    (_, final meeting) => DefaultMeetingObjectSaveAttempt(
      entity: entity,
      isCreate: isCreate,
      formOpenDuration: formOpenDuration,
      outcome: outcome,
      isDefaultMeetingCreated: meeting != null && !meeting.isArchived,
    ),
  };

  @override
  Future<T> create(T object) async {
    final isRetry = _createdOwner != null;
    final created = _createdOwner ??= await super.create(object);
    final meeting = _meetingOwner.draftDefaultMeetingOf(created);
    if (meeting == null && !isRetry) return created;

    if (meeting == null) await _maybeArchiveCreatedMeeting();
    final savedMeeting = switch (meeting) {
      null => null,
      final meeting => await _createOrReviseMeeting(meeting),
    };
    final edited = switch (savedMeeting) {
      null => object,
      final savedMeeting => _meetingOwner.withDefaultMeeting(
        object,
        savedMeeting,
      ),
    };

    return await update(created, edited) ??
        (throw ObjectUpdateNotSavedException(created.id));
  }

  Future<Meeting> _createOrReviseMeeting(Meeting draft) async {
    final created = _createdMeeting;
    if (created == null) {
      return _createdMeeting = await _meetingsDAO.createObject(
        newObject: draft,
      );
    }

    return _reviseCreatedMeeting(created, draft.copyWith(id: created.id));
  }

  Future<void> _maybeArchiveCreatedMeeting() async {
    final created = _createdMeeting;
    if (created == null || created.isArchived) return;

    await _reviseCreatedMeeting(created, created.copyWith(isArchived: true));
  }

  Future<Meeting> _reviseCreatedMeeting(
    Meeting created,
    Meeting revised,
  ) async => _createdMeeting =
      await _meetingsDAO.updateObject(newObject: revised, oldObject: created) ??
      (throw ObjectUpdateNotSavedException(created.id));
}
