// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'order_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBy _$OrderByFromJson(Map json) => OrderBy(
  field: fieldMetadataFromJson(json['field']),
  value: json['value'] == null
      ? OrderByValue.asc
      : orderByValueFromJson(json['value']),
);

Map<String, dynamic> _$OrderByToJson(OrderBy instance) => <String, dynamic>{
  'field': fieldMetadataToJson(instance.field),
  'value': orderByValueToJson(instance.value),
};
