import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_query.freezed.dart';
part 'advanced_query.g.dart';

@freezed
class AdvancedQuery with _$AdvancedQuery implements ToJson, SerializableExtra {
  const factory AdvancedQuery({
    required String name,
    @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
    required QueryableType queryableType,
    @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
    @Default([])
    List<Condition> conditions,
    @Default(LogicalOperator.and) LogicalOperator logicalOperator,
    @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
    @Default([])
    List<OrderBy> orderBy,
    int? limit,
  }) = _AdvancedQuery;
  const AdvancedQuery._();

  factory AdvancedQuery.fromJson(Map<String, Object?> json) =>
      _$AdvancedQueryFromJson(json);

  @override
  String get typeName => 'AdvancedQuery';
}

List<Json> conditionsToJson(List<Condition> data) =>
    data.map((c) => c.toJson()).toList();

List<Condition> conditionsFromJson(List data) =>
    data.map((d) => Condition.fromJson((d as Map).cast())).toList();

List<Json> orderBysToJson(List<OrderBy> data) =>
    data.map((o) => o.toJson()).toList();

List<OrderBy> orderBysFromJson(List data) =>
    data.map((d) => OrderBy.fromJson((d as Map).cast())).toList();

QueryableType queryableTypeFromJson(String data) =>
    AdvancedQueriesMetadata.queryableTypes.values
        .firstWhere((qt) => qt.name == data);

String queryableTypeToJson(QueryableType data) => data.name;
