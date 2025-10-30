// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class ChurchFields {
  static final ChurchFields _instance = ChurchFields._();
  factory ChurchFields() => _instance;
  ChurchFields._();

  final FieldMetadata<Church> id = FieldMetadata<Church>(
    getValue: (obj) => obj is Church ? obj.id : null,
    parentType: Church,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Church ? obj.name : null,
    parentType: Church,
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

Church _$ChurchFromJson(Map json) => Church(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$ChurchToJson(Church instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
