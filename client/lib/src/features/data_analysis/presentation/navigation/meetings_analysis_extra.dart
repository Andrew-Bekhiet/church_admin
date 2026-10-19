import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meetings_analysis_extra.g.dart';

@JsonSerializable()
class MeetingsAnalysisExtra extends SerializableExtra {
  static DateTimeRangePreset _dateRangePresetFromString(String data) {
    switch (data) {
      case 'today':
        return TodayDateTimeRangePreset();
      case 'past_month':
        return PastMonthDateTimeRangePreset();
      case 'past_quarter':
        return PastQuarterDateTimeRangePreset();
      case 'past_year':
        return PastYearDateTimeRangePreset();

      default:
        return CustomDateTimeRangePreset(range: dateRangeFromString(data)!);
    }
  }

  static String _dateRangePresetToString(DateTimeRangePreset rangePreset) {
    switch (rangePreset) {
      case TodayDateTimeRangePreset():
        return 'today';

      case PastMonthDateTimeRangePreset():
        return 'past_month';

      case PastQuarterDateTimeRangePreset():
        return 'past_quarter';

      case PastYearDateTimeRangePreset():
        return 'past_year';

      case CustomDateTimeRangePreset():
        return dateRangeToString(rangePreset.range)!;
    }
  }

  final String title;

  @JsonKey(
    fromJson: _dateRangePresetFromString,
    toJson: _dateRangePresetToString,
  )
  final DateTimeRangePreset initialRangePreset;

  final MeetingsAnalysisSubject subject;

  @override
  String get typeName => '$MeetingsAnalysisExtra';

  const MeetingsAnalysisExtra({
    required this.title,
    required this.initialRangePreset,
    required this.subject,
  });

  factory MeetingsAnalysisExtra.fromJson(Json json) =>
      _$MeetingsAnalysisExtraFromJson(json);

  @override
  Json toJson() => _$MeetingsAnalysisExtraToJson(this);
}
