// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class QualificationFields {
  static final QualificationFields _instance = QualificationFields._();
  factory QualificationFields() => _instance;
  QualificationFields._();

  final FieldMetadata<Qualification> id = FieldMetadata<Qualification>(
    getValue: (obj) => obj is Qualification ? obj.id : null,
    parentType: Qualification,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Qualification ? obj.name : null,
    parentType: Qualification,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [id, name];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Qualification _$QualificationFromJson(Map json) => Qualification(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$QualificationToJson(Qualification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
