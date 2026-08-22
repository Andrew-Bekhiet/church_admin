import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_query.freezed.dart';
part 'advanced_query.g.dart';

@freezed
@JsonSerializable()
class AdvancedQuery with _$AdvancedQuery implements ToJson, SerializableExtra {
  @override
  final String? name;
  @override
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  final QueryableType queryableType;
  @override
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  final List<Filter> filters;
  @override
  final LogicalOperator logicalOperator;
  @override
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  final List<OrderBy> orderBy;
  @override
  final int? limit;

  @override
  String get typeName => 'AdvancedQuery';

  const AdvancedQuery({
    required this.queryableType,
    this.filters = const [],
    this.logicalOperator = LogicalOperator.and,
    this.orderBy = const [],
    this.name,
    this.limit,
  });

  factory AdvancedQuery.fromJson(Map<String, Object?> json) =>
      _$AdvancedQueryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdvancedQueryToJson(this);

  Json serializeFilter() =>
      logicalOperator.queryToJson(const DotField(), filters);
}

List<Json> conditionsToJson(List<Filter> data) =>
    data.map((c) => c.toJson()).toList();

List<Filter> conditionsFromJson(List data) =>
    data.map((d) => Filter.fromJson((d as Map).cast())).toList();

List<Json> orderBysToJson(List<OrderBy> data) =>
    data.map((o) => o.toJson()).toList();

List<OrderBy> orderBysFromJson(List data) =>
    data.map((d) => OrderBy.fromJson((d as Map).cast())).toList();

QueryableType queryableTypeFromJson(String data) =>
    AdvancedQueriesMetadata().allQueryables.firstWhere((qt) => qt.name == data);

String queryableTypeToJson(QueryableType data) => data.name;
