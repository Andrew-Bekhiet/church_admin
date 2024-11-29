import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_aggregate_data.freezed.dart';
part 'history_aggregate_data.g.dart';

@freezed
@TypeMetadata(ignoreFields: ['nodes'])
class HistoryAggregateData with _$HistoryAggregateData {
  static Map<String, FieldMetadata> get fieldsMetadata =>
      _$HistoryAggregateDataFields;

  static final QueryableType<HistoryAggregateData> queryableType =
      QueryableType<HistoryAggregateData>(
    name: 'HistoryAggregateData',
    label: 'HistoryAggregateData',
    fieldsMetadata: fieldsMetadata,
    fromJson: HistoryAggregateData.fromJson,
  );

  const factory HistoryAggregateData({
    required AggregateData aggregate,
    @Default([]) List<LastRecordedByInfo> nodes,
  }) = _HistoryAggregateData;

  factory HistoryAggregateData.fromJson(Json json) =>
      _$HistoryAggregateDataFromJson(json);
}
