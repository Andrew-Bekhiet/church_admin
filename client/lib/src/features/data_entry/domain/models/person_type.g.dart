// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'person_type.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _PersonTypeFields {
  _PersonTypeFields();

  final FieldMetadata<PersonType> id = FieldMetadata<PersonType>(
    getValue: (obj) => obj is PersonType ? obj.id : null,
    parentType: PersonType,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is PersonType ? obj.name : null,
    parentType: PersonType,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<int> order = FieldMetadata<int>(
    getValue: (obj) => obj is PersonType ? obj.order : null,
    parentType: PersonType,
    name: 'order',
    label: 'الترتيب',
    isCodeOnly: false,
    operators: {...PrimitiveOperator.values},
  );

  final FieldMetadata<bool> isFamilyAdmin = FieldMetadata<bool>(
    getValue: (obj) => obj is PersonType ? obj.isFamilyAdmin : null,
    parentType: PersonType,
    name: 'isFamilyAdmin',
    label: 'مسؤول عن العائلة',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  final FieldMetadata<bool> isHidden = FieldMetadata<bool>(
    getValue: (obj) => obj is PersonType ? obj.isHidden : null,
    parentType: PersonType,
    name: 'isHidden',
    label: 'مخفي',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    order,
    isFamilyAdmin,
    isHidden,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'order': order,
    'isFamilyAdmin': isFamilyAdmin,
    'isHidden': isHidden,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonType _$PersonTypeFromJson(Map json) => PersonType(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
  isFamilyAdmin: json['isFamilyAdmin'] as bool? ?? false,
  isHidden: json['isHidden'] as bool? ?? true,
);

Map<String, dynamic> _$PersonTypeToJson(PersonType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'isFamilyAdmin': instance.isFamilyAdmin,
      'isHidden': instance.isHidden,
    };
