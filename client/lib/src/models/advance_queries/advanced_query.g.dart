// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdvancedQuery _$$_AdvancedQueryFromJson(Map json) => _$_AdvancedQuery(
      name: json['name'] as String,
      conditions: json['conditions'] == null
          ? const []
          : conditionsFromJson(json['conditions'] as List),
      orderBy: json['orderBy'] == null
          ? const []
          : orderBysFromJson(json['orderBy'] as List),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_AdvancedQueryToJson(_$_AdvancedQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'conditions': conditionsToJson(instance.conditions),
      'orderBy': orderBysToJson(instance.orderBy),
      'limit': instance.limit,
    };
