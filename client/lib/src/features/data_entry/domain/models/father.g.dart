// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'father.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class FatherFields {
  static final FatherFields _instance = FatherFields._();
  factory FatherFields() => _instance;
  FatherFields._();

  final FieldMetadata<Father> id = FieldMetadata<Father>(
    parentType: Father,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: Father,
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

Father _$FatherFromJson(Map json) => Father(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      churchId: json['churchId'] as String?,
    );

Map<String, dynamic> _$FatherToJson(Father instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'churchId': instance.churchId,
    };
