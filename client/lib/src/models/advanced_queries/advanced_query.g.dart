// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvancedQueryImpl _$$AdvancedQueryImplFromJson(Map json) =>
    _$AdvancedQueryImpl(
      name: json['name'] as String,
      queryableType: queryableTypeFromJson(json['queryableType'] as String),
      conditions: json['conditions'] == null
          ? const []
          : conditionsFromJson(json['conditions'] as List),
      logicalOperator: $enumDecodeNullable(
              _$LogicalOperatorEnumMap, json['logicalOperator']) ??
          LogicalOperator.and,
      orderBy: json['orderBy'] == null
          ? const []
          : orderBysFromJson(json['orderBy'] as List),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AdvancedQueryImplToJson(_$AdvancedQueryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'queryableType': queryableTypeToJson(instance.queryableType),
      'conditions': conditionsToJson(instance.conditions),
      'logicalOperator': _$LogicalOperatorEnumMap[instance.logicalOperator]!,
      'orderBy': orderBysToJson(instance.orderBy),
      'limit': instance.limit,
    };

const _$LogicalOperatorEnumMap = {
  LogicalOperator.and: 'and',
  LogicalOperator.or: 'or',
  LogicalOperator.not: 'not',
};
