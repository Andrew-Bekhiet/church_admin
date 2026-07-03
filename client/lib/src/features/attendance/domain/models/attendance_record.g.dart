// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class AttendanceRecordFields {
  static final AttendanceRecordFields _instance = AttendanceRecordFields._();
  factory AttendanceRecordFields() => _instance;
  AttendanceRecordFields._();

  final FieldMetadata<AttendanceRecord> id = FieldMetadata<AttendanceRecord>(
    getValue: (obj) => obj is AttendanceRecord ? obj.id : null,
    parentType: AttendanceRecord,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Meeting> meeting = FieldMetadata<Meeting>(
    getValue: (obj) => obj is AttendanceRecord ? obj.meeting : null,
    parentType: AttendanceRecord,
    name: 'meeting',
    label: 'meeting',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is AttendanceRecord ? obj.person : null,
    parentType: AttendanceRecord,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> datetime = FieldMetadata<DateTime>(
    getValue: (obj) => obj is AttendanceRecord ? obj.datetime : null,
    parentType: AttendanceRecord,
    name: 'datetime',
    label: 'datetime',
    isCodeOnly: false,
    operators: {...DateTimeOperator.values, ...DateRangeOperator.values},
  );

  final FieldMetadata<bool> asServant = FieldMetadata<bool>(
    getValue: (obj) => obj is AttendanceRecord ? obj.asServant : null,
    parentType: AttendanceRecord,
    name: 'asServant',
    label: 'asServant',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<User> recordedByUser = FieldMetadata<User>(
    getValue: (obj) => obj is AttendanceRecord ? obj.recordedByUser : null,
    parentType: AttendanceRecord,
    name: 'recordedByUser',
    label: 'الخادم الذي سجل',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    meeting,
    person,
    datetime,
    asServant,
    recordedByUser,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'meeting': meeting,
    'person': person,
    'datetime': datetime,
    'asServant': asServant,
    'recordedByUser': recordedByUser,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRecord _$AttendanceRecordFromJson(Map json) => AttendanceRecord(
  id: json['id'] as String,
  meetingId: json['meetingId'] as String,
  personId: json['personId'] as String,
  datetime: const LocalDateTimeConverter().fromJson(json['datetime'] as String),
  asServant: json['asServant'] as bool,
  meeting: json['meeting'] == null
      ? null
      : Meeting.fromJson(Map<String, Object?>.from(json['meeting'] as Map)),
  person: json['person'] == null
      ? null
      : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  recordedByUser: json['recordedByUser'] == null
      ? null
      : User.fromJson(Map<String, Object?>.from(json['recordedByUser'] as Map)),
);

Map<String, dynamic> _$AttendanceRecordToJson(AttendanceRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'meeting': instance.meeting?.toJson(),
      'personId': instance.personId,
      'person': instance.person?.toJson(),
      'datetime': const LocalDateTimeConverter().toJson(instance.datetime),
      'asServant': instance.asServant,
      'recordedByUser': instance.recordedByUser?.toJson(),
    };
