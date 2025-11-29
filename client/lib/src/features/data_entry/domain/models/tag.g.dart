// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class TagFields {
  static final TagFields _instance = TagFields._();
  factory TagFields() => _instance;
  TagFields._();

  final FieldMetadata<Tag> id = FieldMetadata<Tag>(
    getValue: (obj) => obj is Tag ? obj.id : null,
    parentType: Tag,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Tag ? obj.name : null,
    parentType: Tag,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Tag ? obj.color : null,
    parentType: Tag,
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

Tag _$TagFromJson(Map json) => Tag(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  color: colorFromInt((json['color'] as num?)?.toInt()),
);

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': colorToInt(instance.color),
};
