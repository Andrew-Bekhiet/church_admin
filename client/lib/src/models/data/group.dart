// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group extends ViewableWithIDAndImage with _$Group, AttendanceAnalyzable {
  factory Group({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    Service? service,
    @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
        DateTimeRange? validity,
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
  }) = _Group;
  Group._() : super();

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'groups/$id',
          downloadUrlFn: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('groups', id),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
