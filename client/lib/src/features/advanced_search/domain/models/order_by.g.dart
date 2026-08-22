// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

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
