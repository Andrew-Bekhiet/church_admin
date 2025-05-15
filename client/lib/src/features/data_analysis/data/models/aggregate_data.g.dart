// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate_data.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$AggregateDataFields = <String, FieldMetadata>{
  'count': FieldMetadata<int>(
    name: 'count',
    label: 'العدد',
    operators: Operator.comparitive,
  ),
  'max': FieldMetadata<LastRecordedByInfo>(
    name: 'max',
    label: 'أقصى',
  ),
  'min': FieldMetadata<LastRecordedByInfo>(
    name: 'min',
    label: 'أدنى',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AggregateData _$AggregateDataFromJson(Map json) => _AggregateData(
      count: (json['count'] as num?)?.toInt(),
      max: _readLastRecordedByInfo(json, 'max') == null
          ? null
          : LastRecordedByInfo.fromJson(Map<String, Object?>.from(
              _readLastRecordedByInfo(json, 'max') as Map)),
      min: _readLastRecordedByInfo(json, 'min') == null
          ? null
          : LastRecordedByInfo.fromJson(Map<String, Object?>.from(
              _readLastRecordedByInfo(json, 'min') as Map)),
    );

Map<String, dynamic> _$AggregateDataToJson(_AggregateData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'max': instance.max?.toJson(),
      'min': instance.min?.toJson(),
    };
