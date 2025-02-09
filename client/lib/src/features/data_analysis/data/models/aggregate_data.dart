import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregate_data.freezed.dart';
part 'aggregate_data.g.dart';

@freezed
@TypeMetadata()
class AggregateData with _$AggregateData {
  static Map<String, FieldMetadata> get fieldsMetadata => _$AggregateDataFields;

  static final QueryableType<AggregateData> queryableType =
      QueryableType<AggregateData>(
    name: 'AggregateData',
    label: 'الإحصائيات',
    fieldsMetadata: fieldsMetadata,
    fromJson: AggregateData.fromJson,
  );

  const factory AggregateData({
    int? count,
    @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? max,
    @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? min,
  }) = _AggregateData;

  factory AggregateData.fromJson(Map<String, Object?> json) =>
      _$AggregateDataFromJson(json);
}

Map? _readLastRecordedByInfo(Map json, String field) =>
    json[field]?['time'] == null ? null : json[field];
