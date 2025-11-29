// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobby.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class HobbyFields {
  static final HobbyFields _instance = HobbyFields._();
  factory HobbyFields() => _instance;
  HobbyFields._();

  final FieldMetadata<Hobby> id = FieldMetadata<Hobby>(
    getValue: (obj) => obj is Hobby ? obj.id : null,
    parentType: Hobby,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Hobby ? obj.name : null,
    parentType: Hobby,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Hobby ? obj.color : null,
    parentType: Hobby,
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
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hobby _$HobbyFromJson(Map json) => Hobby(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  color: colorFromInt((json['color'] as num?)?.toInt()),
);

Map<String, dynamic> _$HobbyToJson(Hobby instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': colorToInt(instance.color),
};
