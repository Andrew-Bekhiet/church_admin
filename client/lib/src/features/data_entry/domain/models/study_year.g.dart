// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_year.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _StudyYearFields {
  _StudyYearFields();

  final FieldMetadata<int> order = FieldMetadata<int>(
    parentType: StudyYear,
    name: 'order',
    label: 'الترتيب',
    isCodeOnly: false,
    operators: {...PrimitiveOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: StudyYear,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<StudyYear> id = FieldMetadata<StudyYear>(
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
    'id': id
  };
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
