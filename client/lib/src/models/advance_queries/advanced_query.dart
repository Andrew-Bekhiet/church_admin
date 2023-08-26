// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_query.freezed.dart';
part 'advanced_query.g.dart';

@freezed
class AdvancedQuery with _$AdvancedQuery implements ToJson {
  const factory AdvancedQuery({
    required String name,
    @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
    @Default([])
    List<Condition> conditions,
    @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
    @Default([])
    List<OrderBy> orderBy,
    int? limit,
  }) = _AdvancedQuery;

  factory AdvancedQuery.fromJson(Map<String, Object?> json) =>
      _$AdvancedQueryFromJson(json);
}

List<Json> conditionsToJson(List<Condition> data) =>
    data.map((c) => c.toJson()).toList();

List<Condition> conditionsFromJson(List<Json> data) =>
    data.map(Condition.fromJson).toList();

List<Json> orderBysToJson(List<OrderBy> data) =>
    data.map((o) => o.toJson()).toList();

List<OrderBy> orderBysFromJson(List<Json> data) =>
    data.map(OrderBy.fromJson).toList();
