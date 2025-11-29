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

  final FieldMetadata<DateTime> time = FieldMetadata<DateTime>(
    getValue: (obj) => obj is AttendanceRecord ? obj.time : null,
    parentType: AttendanceRecord,
    name: 'time',
    label: 'الوقت',
    isCodeOnly: false,
    operators: {...DateTimeOperator.values, ...DateRangeOperator.values},
  );

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    getValue: (obj) => obj is AttendanceRecord ? obj.service : null,
    parentType: AttendanceRecord,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is AttendanceRecord ? obj.person : null,
    parentType: AttendanceRecord,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<User> recordedByUser = FieldMetadata<User>(
    getValue: (obj) => obj is AttendanceRecord ? obj.recordedByUser : null,
    parentType: AttendanceRecord,
    name: 'recordedByUser',
    label: 'الخادم الذي سجل',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<bool> asAdmin = FieldMetadata<bool>(
    getValue: (obj) => obj is AttendanceRecord ? obj.asAdmin : null,
    parentType: AttendanceRecord,
    name: 'asAdmin',
    label: 'asAdmin',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<StudyYear> studyYear = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is AttendanceRecord ? obj.studyYear : null,
    parentType: AttendanceRecord,
    name: 'studyYear',
    label: 'السنة الدراسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceGender = FieldMetadata<bool>(
    getValue: (obj) => obj is AttendanceRecord ? obj.serviceGender : null,
    parentType: AttendanceRecord,
    name: 'serviceGender',
    label: 'نوع المخدومين المسؤول عنهم',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Group> group = FieldMetadata<Group>(
    getValue: (obj) => obj is AttendanceRecord ? obj.group : null,
    parentType: AttendanceRecord,
    name: 'group',
    label: 'المجموعة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Class> class$ = FieldMetadata<Class>(
    getValue: (obj) => obj is AttendanceRecord ? obj.class$ : null,
    parentType: AttendanceRecord,
    name: 'class',
    label: 'الفصل',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    time,
    service,
    person,
    recordedByUser,
    asAdmin,
    studyYear,
    serviceGender,
    group,
    class$,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'time': time,
    'service': service,
    'person': person,
    'recordedByUser': recordedByUser,
    'asAdmin': asAdmin,
    'studyYear': studyYear,
    'serviceGender': serviceGender,
    'group': group,
    'class': class$,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRecord _$AttendanceRecordFromJson(Map json) => AttendanceRecord(
  id: json['id'] as String,
  dayId: DateTime.parse(json['dayId'] as String),
  time: DateTime.parse(json['time'] as String),
  service: Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
  person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  recordedByUser: User.fromJson(
    Map<String, Object?>.from(json['recordedByUser'] as Map),
  ),
  asAdmin: json['asAdmin'] as bool,
  studyYear: json['studyYear'] == null
      ? null
      : StudyYear.fromJson(Map<String, Object?>.from(json['studyYear'] as Map)),
  serviceGender: json['serviceGender'] as bool?,
  group: json['group'] == null
      ? null
      : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
  class$: json['class'] == null
      ? null
      : Class.fromJson(Map<String, Object?>.from(json['class'] as Map)),
);

Map<String, dynamic> _$AttendanceRecordToJson(AttendanceRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayId': instance.dayId.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'service': instance.service.toJson(),
      'person': instance.person.toJson(),
      'recordedByUser': instance.recordedByUser.toJson(),
      'asAdmin': instance.asAdmin,
      'studyYear': instance.studyYear?.toJson(),
      'serviceGender': instance.serviceGender,
      'group': instance.group?.toJson(),
      'class': instance.class$?.toJson(),
    };
