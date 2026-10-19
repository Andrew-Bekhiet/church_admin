import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

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

  @JsonKey(defaultValue: MeetingAudience.personsAndServants)
  @QueryableField(label: 'audience')
  final MeetingAudience audience;

  @JsonKey(defaultValue: false)
  @QueryableField(label: 'isArchived')
  final bool isArchived;

  @JsonKey(defaultValue: true)
  @QueryableField(label: 'showKodasCheckbox')
  final bool showKodasCheckbox;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  final String? serviceId;

  @QueryableField(label: 'الخدمة')
  final Service? service;

  @QueryableField(label: 'serviceStudyYear')
  final int? serviceStudyYear;

  @QueryableField(label: 'السنة الدراسية')
  final StudyYear? studyYear;

  @QueryableField(label: 'نوع المخدومين المسؤول عنهم')
  final bool? serviceGender;

  final String? groupId;

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
}
