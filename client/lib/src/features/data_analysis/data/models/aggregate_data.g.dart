// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'aggregate_data.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class AggregateDataFields {
  static final AggregateDataFields _instance = AggregateDataFields._();
  factory AggregateDataFields() => _instance;
  AggregateDataFields._();

  final FieldMetadata<int> count = FieldMetadata<int>(
    getValue: (obj) => obj is AggregateData ? obj.count : null,
    parentType: AggregateData,
    name: 'count',
    label: 'العدد',
    isCodeOnly: false,
    operators: {
      ...PrimitiveOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<LastRecordedByInfo> max =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is AggregateData ? obj.max : null,
        parentType: AggregateData,
        name: 'max',
        label: 'أقصى',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> min =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is AggregateData ? obj.min : null,
        parentType: AggregateData,
        name: 'min',
        label: 'أدنى',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  late final List<FieldMetadata<Object>> allFields = [count, max, min];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'count': count,
    'max': max,
    'min': min,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateData _$AggregateDataFromJson(Map json) => AggregateData(
  count: (json['count'] as num?)?.toInt(),
  max: _readLastRecordedByInfo(json, 'max') == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(
            _readLastRecordedByInfo(json, 'max') as Map,
          ),
        ),
  min: _readLastRecordedByInfo(json, 'min') == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(
            _readLastRecordedByInfo(json, 'min') as Map,
          ),
        ),
);

Map<String, dynamic> _$AggregateDataToJson(AggregateData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'max': instance.max?.toJson(),
      'min': instance.min?.toJson(),
    };
