// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvancedQuery _$AdvancedQueryFromJson(Map json) => AdvancedQuery(
      queryableType: queryableTypeFromJson(json['queryableType'] as String),
      name: json['name'] as String?,
      filters: json['filters'] == null
          ? const []
          : conditionsFromJson(json['filters'] as List),
      logicalOperator: $enumDecodeNullable(
              _$LogicalOperatorEnumMap, json['logicalOperator']) ??
          LogicalOperator.and,
      orderBy: json['orderBy'] == null
          ? const []
          : orderBysFromJson(json['orderBy'] as List),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdvancedQueryToJson(AdvancedQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'queryableType': queryableTypeToJson(instance.queryableType),
      'filters': conditionsToJson(instance.filters),
      'logicalOperator': _$LogicalOperatorEnumMap[instance.logicalOperator]!,
      'orderBy': orderBysToJson(instance.orderBy),
      'limit': instance.limit,
    };

const _$LogicalOperatorEnumMap = {
  LogicalOperator.or: 'or',
  LogicalOperator.and: 'and',
  LogicalOperator.not: 'not',
};
