// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderBy _$OrderByFromJson(Map json) => _OrderBy(
      fieldName: json['fieldName'] as String,
      value: json['value'] == null
          ? Enum_OrderBy.ASC
          : orderByValueFromJson(json['value']),
    );

Map<String, dynamic> _$OrderByToJson(_OrderBy instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      'value': orderByValueToJson(instance.value),
    };
