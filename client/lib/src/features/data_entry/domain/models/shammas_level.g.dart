// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'shammas_level.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class ShammasLevelFields {
  factory ShammasLevelFields() => _instance;

  ShammasLevelFields._();

  static final ShammasLevelFields _instance = ShammasLevelFields._();

  final FieldMetadata<int> order = FieldMetadata<int>(
    getValue: (obj) => obj is ShammasLevel ? obj.order : null,
    parentType: ShammasLevel,
    name: 'order',
    label: 'الترتيب',
    isCodeOnly: false,
    operators: {...PrimitiveOperator.values},
  );

  final FieldMetadata<ShammasLevel> id = FieldMetadata<ShammasLevel>(
    getValue: (obj) => obj is ShammasLevel ? obj.id : null,
    parentType: ShammasLevel,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is ShammasLevel ? obj.name : null,
    parentType: ShammasLevel,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [order, id, name];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'order': order,
    'id': id,
    'name': name,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShammasLevel _$ShammasLevelFromJson(Map json) => ShammasLevel(
  order: (json['order'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  id: json['id'] as String? ?? '',
);

Map<String, dynamic> _$ShammasLevelToJson(ShammasLevel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'id': instance.id,
      'name': instance.name,
    };
