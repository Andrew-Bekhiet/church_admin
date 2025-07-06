import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_record.freezed.dart';
part 'attendance_record.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'حضور الاجتماع')
class AttendanceRecord
    with _$AttendanceRecord
    implements ID, SerializableExtra {
  @override
  final String id;
  @override
  final DateTime dayId;
  @override
  final DateTime time;
  @override
  final Service service;
  @override
  final Person person;
  @override
  final User recordedByUser;
  @override
  final bool asAdmin;
  @override
  final StudyYear? studyYear;
  @override
  final bool? serviceGender;
  @override
  final Group? group;
  @override
  @JsonKey(name: 'class')
  @QueryableField(renameTo: 'class')
  final Class? class$;

  const AttendanceRecord({
    required this.id,
    required this.dayId,
    required this.time,
    required this.service,
    required this.person,
    required this.recordedByUser,
    required this.asAdmin,
    this.studyYear,
    this.serviceGender,
    this.group,
    this.class$,
  });

  factory AttendanceRecord.fromJson(Map<String, Object?> json) =>
      _$AttendanceRecordFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttendanceRecordToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().attendanceRecord.name;
}
