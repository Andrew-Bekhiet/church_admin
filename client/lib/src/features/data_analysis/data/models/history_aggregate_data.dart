import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_aggregate_data.freezed.dart';
part 'history_aggregate_data.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'HistoryAggregateData')
class HistoryAggregateData with _$HistoryAggregateData {
  @override
  @QueryableField(label: 'aggregate')
  final AggregateData aggregate;
  @override
  final List<LastRecordedByInfo> nodes;

  const HistoryAggregateData({
    required this.aggregate,
    this.nodes = const [],
  });

  factory HistoryAggregateData.fromJson(Json json) =>
      _$HistoryAggregateDataFromJson(json);

  Json toJson() => _$HistoryAggregateDataToJson(this);
}
