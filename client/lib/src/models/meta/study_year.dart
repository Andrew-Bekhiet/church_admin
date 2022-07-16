// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:churchdata_core/churchdata_core.dart' show Json, ViewableWithID;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year.freezed.dart';
part 'study_year.g.dart';

@freezed
class StudyYear extends ViewableWithID with _$StudyYear {
  factory StudyYear({
    required int order,
    required String name,
  }) = _StudyYear;
  StudyYear._() : super();

  @override
  String get id => order.toString();

  factory StudyYear.fromJson(Map<String, Object?> json) =>
      _$StudyYearFromJson(json);
}

StudyYear? studyYearFromJson(dynamic data) =>
    data == null ? null : StudyYear.fromJson(data);
Json? studyYearToJson(StudyYear? data) => data?.toJson();
