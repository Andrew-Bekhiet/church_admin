// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class extends ViewableWithIDAndImage
    with _$Class
    implements AttendanceAnalyzable {
  factory Class({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    Service? service,
    bool? serviceGender,
    StudyYear? studyYear,
    LastRecordedByInfo? lastEdit,
    @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
        List<User>? adminUsers,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? attendanceHistoryAggregate,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? attendanceDaysConstraintsAggregate,
  }) = _Class;
  Class._() : super();

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('classes', id, lastUpdatedTime: photoUpdatedAt);
}
