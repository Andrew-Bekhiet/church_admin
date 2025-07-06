import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_aggregate_data.freezed.dart';
part 'history_aggregate_data.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'HistoryAggregateData', ignoreFields: ['nodes'])
class HistoryAggregateData with _$HistoryAggregateData {
  @override
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
