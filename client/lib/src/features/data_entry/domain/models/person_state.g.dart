// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'person_state.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonStateFields {
  static final PersonStateFields _instance = PersonStateFields._();
  final FieldMetadata<PersonState> id = FieldMetadata<PersonState>(
    getValue: (obj) => obj is PersonState ? obj.id : null,
    parentType: PersonState,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is PersonState ? obj.name : null,
    parentType: PersonState,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is PersonState ? obj.color : null,
    parentType: PersonState,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [id, name, color];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'color': color,
  };
  factory PersonStateFields() => _instance;
  PersonStateFields._();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonState _$PersonStateFromJson(Map json) => PersonState(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  color: colorFromInt((json['color'] as num?)?.toInt()),
);

Map<String, dynamic> _$PersonStateToJson(PersonState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
