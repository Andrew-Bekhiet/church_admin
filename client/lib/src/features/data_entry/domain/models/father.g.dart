// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'father.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class FatherFields {
  factory FatherFields() => _instance;

  FatherFields._();

  static final FatherFields _instance = FatherFields._();

  final FieldMetadata<Father> id = FieldMetadata<Father>(
    getValue: (obj) => obj is Father ? obj.id : null,
    parentType: Father,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Father ? obj.name : null,
    parentType: Father,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<bool> isHidden = FieldMetadata<bool>(
    getValue: (obj) => obj is Father ? obj.isHidden : null,
    parentType: Father,
    name: 'isHidden',
    label: 'isHidden',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [id, name, isHidden];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'isHidden': isHidden,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Father _$FatherFromJson(Map json) => Father(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  isHidden: json['isHidden'] as bool? ?? true,
  churchId: json['churchId'] as String?,
);

Map<String, dynamic> _$FatherToJson(Father instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'churchId': instance.churchId,
  'isHidden': instance.isHidden,
};
