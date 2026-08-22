// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'study_year.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _StudyYearFields {
  final FieldMetadata<int> order = FieldMetadata<int>(
    getValue: (obj) => obj is StudyYear ? obj.order : null,
    parentType: StudyYear,
    name: 'order',
    label: 'الترتيب',
    isCodeOnly: false,
    operators: {...PrimitiveOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is StudyYear ? obj.name : null,
    parentType: StudyYear,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<StudyYear> id = FieldMetadata<StudyYear>(
    getValue: (obj) => obj is StudyYear ? obj.id : null,
    parentType: StudyYear,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [order, name, id];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'order': order,
    'name': name,
    'id': id,
  };

  _StudyYearFields();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudyYear _$StudyYearFromJson(Map json) => StudyYear(
  order: (json['order'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
);

Map<String, dynamic> _$StudyYearToJson(StudyYear instance) => <String, dynamic>{
  'order': instance.order,
  'name': instance.name,
};
