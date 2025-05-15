// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_year.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$StudyYearFields = <String, FieldMetadata>{
  'order': FieldMetadata<int>(
    name: 'order',
    label: 'الترتيب',
    operators: Operator.comparitive,
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'id': FieldMetadata<StudyYear>(
    name: 'id',
    label: '=',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudyYear _$StudyYearFromJson(Map json) => _StudyYear(
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$StudyYearToJson(_StudyYear instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
    };
