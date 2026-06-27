import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'اجتماع')
class Meeting extends ViewableWithID
    with _$Meeting
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  final MeetingAudience audience;

  @override
  final bool archived;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  final String? serviceId;

  @override
  final Service? service;

  @override
  final int? serviceStudyYear;

  @override
  final StudyYear? studyYear;

  @override
  final bool? serviceGender;

  @override
  final String? groupId;

  @override
  final Group? group;

  const Meeting({
    required this.id,
    required this.name,
    required this.audience,
    required this.archived,
    this.color,
    this.serviceId,
    this.service,
    this.serviceStudyYear,
    this.studyYear,
    this.serviceGender,
    this.groupId,
    this.group,
  });

  factory Meeting.fromJson(Map<String, Object?> json) =>
      _$MeetingFromJson(json);

  @override
  Json toJson() => _$MeetingToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().meeting.name;

  Input_HistoryMeetingsInsertInput toInsertInput() {
    return Input_HistoryMeetingsInsertInput(
      name: name,
      audience: audience.name,
      color: colorToInt(color),
      archived: archived,
      serviceId: service?.id.toUuid() ?? serviceId?.toUuid(),
      serviceStudyYear: serviceStudyYear,
      serviceGender: serviceGender,
      groupId: group?.id.toUuid() ?? groupId?.toUuid(),
    );
  }

  Input_HistoryMeetingsSetInput toUpdateInput({required Meeting oldMeeting}) {
    Input_HistoryMeetingsSetInput result = Input_HistoryMeetingsSetInput();
    if (name != oldMeeting.name) {
      result = result.copyWith(name: name);
    }
    if (audience != oldMeeting.audience) {
      result = result.copyWith(audience: audience.name);
    }
    if (color != oldMeeting.color) {
      result = result.copyWith(color: colorToInt(color));
    }
    if (archived != oldMeeting.archived) {
      result = result.copyWith(archived: archived);
    }
    return result;
  }
}
