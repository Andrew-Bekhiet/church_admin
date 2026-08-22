// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'meeting.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class MeetingFields {
  static final MeetingFields _instance = MeetingFields._();
  final FieldMetadata<Meeting> id = FieldMetadata<Meeting>(
    getValue: (obj) => obj is Meeting ? obj.id : null,
    parentType: Meeting,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Meeting ? obj.name : null,
    parentType: Meeting,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<MeetingAudience> audience =
      FieldMetadata<MeetingAudience>(
        getValue: (obj) => obj is Meeting ? obj.audience : null,
        parentType: Meeting,
        name: 'audience',
        label: 'audience',
        isCodeOnly: false,
        operators: {...MultiSelectOperator.values},
      );

  final FieldMetadata<bool> isArchived = FieldMetadata<bool>(
    getValue: (obj) => obj is Meeting ? obj.isArchived : null,
    parentType: Meeting,
    name: 'isArchived',
    label: 'isArchived',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Meeting ? obj.color : null,
    parentType: Meeting,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    getValue: (obj) => obj is Meeting ? obj.service : null,
    parentType: Meeting,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<int> serviceStudyYear = FieldMetadata<int>(
    getValue: (obj) => obj is Meeting ? obj.serviceStudyYear : null,
    parentType: Meeting,
    name: 'serviceStudyYear',
    label: 'serviceStudyYear',
    isCodeOnly: false,
    operators: {
      ...PrimitiveOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<StudyYear> studyYear = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is Meeting ? obj.studyYear : null,
    parentType: Meeting,
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
    getValue: (obj) => obj is Meeting ? obj.serviceGender : null,
    parentType: Meeting,
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
    getValue: (obj) => obj is Meeting ? obj.group : null,
    parentType: Meeting,
    name: 'group',
    label: 'المجموعة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    audience,
    isArchived,
    color,
    service,
    serviceStudyYear,
    studyYear,
    serviceGender,
    group,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'audience': audience,
    'isArchived': isArchived,
    'color': color,
    'service': service,
    'serviceStudyYear': serviceStudyYear,
    'studyYear': studyYear,
    'serviceGender': serviceGender,
    'group': group,
  };
  factory MeetingFields() => _instance;
  MeetingFields._();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meeting _$MeetingFromJson(Map json) => Meeting(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  audience: $enumDecode(_$MeetingAudienceEnumMap, json['audience']),
  isArchived: json['isArchived'] as bool,
  color: colorFromInt((json['color'] as num?)?.toInt()),
  serviceId: json['serviceId'] as String?,
  service: json['service'] == null
      ? null
      : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
  serviceStudyYear: (json['serviceStudyYear'] as num?)?.toInt(),
  studyYear: json['studyYear'] == null
      ? null
      : StudyYear.fromJson(Map<String, Object?>.from(json['studyYear'] as Map)),
  serviceGender: json['serviceGender'] as bool?,
  groupId: json['groupId'] as String?,
  group: json['group'] == null
      ? null
      : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
);

Map<String, dynamic> _$MeetingToJson(Meeting instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'audience': _$MeetingAudienceEnumMap[instance.audience]!,
  'isArchived': instance.isArchived,
  'color': colorToInt(instance.color),
  'serviceId': instance.serviceId,
  'service': instance.service?.toJson(),
  'serviceStudyYear': instance.serviceStudyYear,
  'studyYear': instance.studyYear?.toJson(),
  'serviceGender': instance.serviceGender,
  'groupId': instance.groupId,
  'group': instance.group?.toJson(),
};

const _$MeetingAudienceEnumMap = {
  MeetingAudience.onlyPersons: 'onlyPersons',
  MeetingAudience.onlyServants: 'onlyServants',
  MeetingAudience.personsAndServants: 'personsAndServants',
};
