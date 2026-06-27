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
  final String meetingId;
  @override
  final Meeting? meeting;
  @override
  final String personId;
  @override
  final Person? person;
  @override
  final DateTime datetime;
  @override
  final bool asServant;
  @override
  final User? recordedByUser;

  const AttendanceRecord({
    required this.id,
    required this.meetingId,
    required this.personId,
    required this.datetime,
    required this.asServant,
    this.meeting,
    this.person,
    this.recordedByUser,
  });

  factory AttendanceRecord.fromJson(Map<String, Object?> json) =>
      _$AttendanceRecordFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttendanceRecordToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().attendanceRecord.name;
}
