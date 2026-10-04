// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'class.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _ClassFields {
  final FieldMetadata<Class> id = FieldMetadata<Class>(
    getValue: (obj) => obj is Class ? obj.id : null,
    parentType: Class,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Class ? obj.name : null,
    parentType: Class,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Class ? obj.color : null,
    parentType: Class,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Class ? obj.photoUpdatedAt : null,
    parentType: Class,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    getValue: (obj) => obj is Class ? obj.service : null,
    parentType: Class,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> studyYear = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Class ? obj.studyYear : null,
    parentType: Class,
    name: 'studyYear',
    label: 'السنة الدراسية',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> studyYearTo = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Class ? obj.studyYearTo : null,
    parentType: Class,
    name: 'studyYearTo',
    label: 'السنة الدراسية: إلى',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> serviceGender = FieldMetadata<bool>(
    getValue: (obj) => obj is Class ? obj.serviceGender : null,
    parentType: Class,
    name: 'serviceGender',
    label: 'نوع المخدومين المسؤول عنهم',
    isCodeOnly: false,
    operators: {
      ...BooleanOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Class ? obj.lastEdit : null,
        parentType: Class,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<AdminOnData> adminUsersRel = FieldMetadata<AdminOnData>(
    getValue: (obj) => obj is Class ? obj.adminUsers : null,
    parentType: Class,
    name: 'adminUsers',
    label: 'adminUsers',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<User> adminUsers = adminUsersRel.redirectTo(
    AdminOnDataFields().user,
    isExpandable: false,
    isOrderable: false,
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    color,
    photoUpdatedAt,
    service,
    studyYear,
    studyYearTo,
    serviceGender,
    lastEdit,
    adminUsers,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'service': service,
    'studyYear': studyYear,
    'studyYearTo': studyYearTo,
    'serviceGender': serviceGender,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
  };

  _ClassFields();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map json) => Class(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  service: json['service'] == null
      ? null
      : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
  serviceId: json['serviceId'] as String?,
  studyYear: json['studyYear'] == null
      ? null
      : StudyYear.fromJson(Map<String, Object?>.from(json['studyYear'] as Map)),
  serviceStudyYear: (json['serviceStudyYear'] as num?)?.toInt(),
  studyYearTo: json['studyYearTo'] == null
      ? null
      : StudyYear.fromJson(
          Map<String, Object?>.from(json['studyYearTo'] as Map),
        ),
  serviceStudyYearTo: (json['serviceStudyYearTo'] as num?)?.toInt(),
  serviceGender: json['serviceGender'] as bool?,
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
);

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'service': instance.service?.toJson(),
  'serviceId': instance.serviceId,
  'studyYear': instance.studyYear?.toJson(),
  'serviceStudyYear': instance.serviceStudyYear,
  'studyYearTo': instance.studyYearTo?.toJson(),
  'serviceStudyYearTo': instance.serviceStudyYearTo,
  'serviceGender': instance.serviceGender,
  'lastEdit': instance.lastEdit?.toJson(),
  'adminUsers': adminUsersToJson(instance.adminUsers),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
