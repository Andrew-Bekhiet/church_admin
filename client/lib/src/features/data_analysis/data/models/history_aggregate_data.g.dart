// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_aggregate_data.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class HistoryAggregateDataFields {
  static final HistoryAggregateDataFields _instance =
      HistoryAggregateDataFields._();
  factory HistoryAggregateDataFields() => _instance;
  HistoryAggregateDataFields._();

  final FieldMetadata<AggregateData> aggregate = FieldMetadata<AggregateData>(
    getValue: (obj) => obj is HistoryAggregateData ? obj.aggregate : null,
    parentType: HistoryAggregateData,
    name: 'aggregate',
    label: 'aggregate',
    isCodeOnly: false,
  );

  late final List<FieldMetadata<Object>> allFields = [aggregate];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'aggregate': aggregate
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryAggregateData _$HistoryAggregateDataFromJson(Map json) =>
    HistoryAggregateData(
      aggregate: AggregateData.fromJson(
          Map<String, Object?>.from(json['aggregate'] as Map)),
      nodes: (json['nodes'] as List<dynamic>?)
              ?.map((e) => LastRecordedByInfo.fromJson(
                  Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HistoryAggregateDataToJson(
        HistoryAggregateData instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate.toJson(),
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };
