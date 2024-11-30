// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderByImpl _$$OrderByImplFromJson(Map json) => _$OrderByImpl(
      fieldName: json['fieldName'] as String,
      value: json['value'] == null
          ? Enum_OrderBy.ASC
          : orderByValueFromJson(json['value']),
    );

Map<String, dynamic> _$$OrderByImplToJson(_$OrderByImpl instance) =>
    <String, dynamic>{
      'fieldName': instance.fieldName,
      'value': orderByValueToJson(instance.value),
    };
