import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_record.freezed.dart';
part 'attendance_record.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'حضور الاجتماع')
class AttendanceRecord
    with _$AttendanceRecord
    implements ID, SerializableExtra {
  @override
  @QueryableField.self()
  final String id;
  @override
  final String meetingId;
  @override
  @QueryableField(label: 'meeting')
  final Meeting? meeting;
  @override
  final String personId;
  @override
  @QueryableField(label: 'بيانات المخدوم')
  final Person? person;
  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'datetime')
  final DateTime datetime;
  @override
  @QueryableField(label: 'asServant')
  final bool asServant;
  @override
  @QueryableField(label: 'الخادم الذي سجل')
  final User? recordedByUser;

  @override
  String get typeName => AdvancedQueriesMetadata().attendanceRecord.name;

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
}
