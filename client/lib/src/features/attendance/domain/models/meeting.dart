import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'اجتماع')
class Meeting extends ViewableWithID
    with _$Meeting
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField(label: 'audience')
  final MeetingAudience audience;

  @override
  @QueryableField(label: 'isArchived')
  final bool isArchived;

  @override
  @JsonKey(defaultValue: true)
  @QueryableField(label: 'showKodasCheckbox')
  final bool showKodasCheckbox;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  final String? serviceId;

  @override
  @QueryableField(label: 'الخدمة')
  final Service? service;

  @override
  @QueryableField(label: 'serviceStudyYear')
  final int? serviceStudyYear;

  @override
  @QueryableField(label: 'السنة الدراسية')
  final StudyYear? studyYear;

  @override
  @QueryableField(label: 'نوع المخدومين المسؤول عنهم')
  final bool? serviceGender;

  @override
  final String? groupId;

  @override
  @QueryableField(label: 'المجموعة')
  final Group? group;

  @override
  String get typeName => AdvancedQueriesMetadata().meeting.name;

  const Meeting({
    required this.id,
    required this.name,
    required this.audience,
    required this.isArchived,
    this.showKodasCheckbox = true,
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

  Input_HistoryMeetingsInsertInput toInsertInput() {
    return Input_HistoryMeetingsInsertInput(
      name: name,
      audience: audience.name,
      color: colorToInt(color),
      isArchived: isArchived,
      showKodasCheckbox: showKodasCheckbox,
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
    if (isArchived != oldMeeting.isArchived) {
      result = result.copyWith(isArchived: isArchived);
    }
    if (showKodasCheckbox != oldMeeting.showKodasCheckbox) {
      result = result.copyWith(showKodasCheckbox: showKodasCheckbox);
    }

    return result;
  }
}
