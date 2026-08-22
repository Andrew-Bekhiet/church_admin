import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'meetings_analysis_route.g.dart';

@TypedGoRoute<MeetingsAnalysisRoute>(path: '/meetings_analysis')
class MeetingsAnalysisRoute extends GoRouteData with $MeetingsAnalysisRoute {
  final MeetingsAnalysisExtra $extra;

  const MeetingsAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MeetingsAnalysisScreen(
      title: $extra.title,
      initialRangePreset: $extra.initialRangePreset,
      subject: $extra.subject,
    );
  }
}

@JsonSerializable()
class MeetingsAnalysisExtra extends SerializableExtra {
  // Subjects can't be encoded to JSON, so the subject is stashed here and only
  // its index travels through serialization.
  static final List<MeetingsAnalysisSubject> _serializedSubjects = [];

  static MeetingsAnalysisSubject _subjectFromJson(int id) =>
      _serializedSubjects[id];

  static int _subjectToJson(MeetingsAnalysisSubject subject) {
    final id = _serializedSubjects.length;
    _serializedSubjects.add(subject);

    return id;
  }

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

  @JsonKey(fromJson: _subjectFromJson, toJson: _subjectToJson)
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
