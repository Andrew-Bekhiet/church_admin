// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_aggregate_data.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$HistoryAggregateDataFields = <String, FieldMetadata>{
  'aggregate': FieldMetadata<AggregateData>(
    name: 'aggregate',
    label: 'aggregate',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HistoryAggregateData _$HistoryAggregateDataFromJson(Map json) =>
    _HistoryAggregateData(
      aggregate: AggregateData.fromJson(
          Map<String, Object?>.from(json['aggregate'] as Map)),
      nodes: (json['nodes'] as List<dynamic>?)
              ?.map((e) => LastRecordedByInfo.fromJson(
                  Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HistoryAggregateDataToJson(
        _HistoryAggregateData instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate.toJson(),
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };
