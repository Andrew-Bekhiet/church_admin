// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_type.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonTypeFields {
  static final PersonTypeFields _instance = PersonTypeFields._();
  factory PersonTypeFields() => _instance;
  PersonTypeFields._();

  final FieldMetadata<PersonType> id = FieldMetadata<PersonType>(
    parentType: PersonType,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: PersonType,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    parentType: PersonType,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  late final List<FieldMetadata<Object>> allFields = [id, name, color];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'color': color
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonType _$PersonTypeFromJson(Map json) => PersonType(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: colorFromInt((json['color'] as num?)?.toInt()),
    );

Map<String, dynamic> _$PersonTypeToJson(PersonType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
