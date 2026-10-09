import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregate_data.freezed.dart';
part 'aggregate_data.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الإحصائيات')
class AggregateData with _$AggregateData {
  @override
  final int? count;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? max;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? min;

  const AggregateData({
    this.count,
    this.max,
    this.min,
  });
  factory AggregateData.fromJson(Map<String, Object?> json) =>
      _$AggregateDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateDataToJson(this);
}

Map? _readLastRecordedByInfo(Map json, String field) =>
    json[field]?['time'] == null ? null : json[field];
