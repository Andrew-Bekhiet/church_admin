// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service extends ViewableWithIDAndImage
    with _$Service
    implements AttendanceAnalyzable {
  factory Service({
    required String id,
    required String name,
    StudyYear? fromStudyYear,
    StudyYear? toStudyYear,
    @JsonKey(name: 'nextServiceObject')
        Service? nextService,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    List<Class>? classes,
    List<Group>? groups,
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
  }) = _Service;
  Service._() : super();

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'services/$id',
          downloadUrlFn: () =>
              FunctionsService.I.getDownloadUrl('services', id),
          uploadUrlFn: ({contentType, overrideId}) =>
              FunctionsService.I.getUploadUrl(
            'services',
            overrideId ?? id,
            contentType: contentType,
          ),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
