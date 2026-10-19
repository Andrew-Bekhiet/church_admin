import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:collection/collection.dart' show maxBy;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_aggregate_data.freezed.dart';
part 'history_aggregate_data.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'HistoryAggregateData')
class HistoryAggregateData with _$HistoryAggregateData {
  /// The server answers a history as its entries; a stored copy keeps the
  /// aggregate it was read into.
  static HistoryAggregateData? fromJsonOrNodes(Object? json) => switch (json) {
    final List nodes => HistoryAggregateData.ofNodes([
      for (final node in nodes) LastRecordedByInfo.fromJson(Json.from(node)),
    ]),
    final Map json => HistoryAggregateData.fromJson(Json.from(json)),
    _ => null,
  };

  @QueryableField(label: 'aggregate')
  final AggregateData aggregate;
  final List<LastRecordedByInfo> nodes;

  const HistoryAggregateData({
    required this.aggregate,
    this.nodes = const [],
  });

  factory HistoryAggregateData.fromJson(Json json) =>
      _$HistoryAggregateDataFromJson(json);

  factory HistoryAggregateData.ofNodes(List<LastRecordedByInfo> nodes) =>
      HistoryAggregateData(
        aggregate: AggregateData(
          count: nodes.length,
          max: maxBy(nodes, (node) => node.time),
        ),
        nodes: nodes,
      );

  Json toJson() => _$HistoryAggregateDataToJson(this);
}
