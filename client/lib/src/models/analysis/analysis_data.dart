import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_data.freezed.dart';

@Freezed(genericArgumentFactories: true)
class AnalysisData<T> with _$AnalysisData<T> {
  factory AnalysisData({
    required AggregateData<T?> aggregate,
    @Default([]) List<T> nodes,
  }) = _AnalysisData<T>;
}

AnalysisData<DateTime>? analysisDataFromJson(Json? json) => json == null
    ? null
    : AnalysisData<DateTime>(
        aggregate: AggregateData.fromJson(
          json['aggregate'],
          (j) => j is! Json || (j['dayId'] ?? j['time'])==null ? null : dateFromString(j['dayId'] ?? j['time']!),
        ),
        nodes: (json['nodes'] as List?)
                ?.map(
                  (j) => dateFromString(j['dayId'] ?? j['time']!),
                )
                .toList() ??
            [],
      );

Json? analysisDataToJson(AnalysisData? json) => null;
