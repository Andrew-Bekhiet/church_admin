// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AggregateData<T> _$$_AggregateDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_AggregateData<T>(
      count: json['count'] as int?,
      max: _$nullableGenericFromJson(json['max'], fromJsonT),
    );

Map<String, dynamic> _$$_AggregateDataToJson<T>(
  _$_AggregateData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'max': _$nullableGenericToJson(instance.max, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
