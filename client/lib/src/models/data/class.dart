// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show AsyncMemoizerCache, PhotoObjectBase, ViewableWithID;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class extends ViewableWithID
    with _$Class, AttendanceAnalyzable
    implements PhotoObjectBase {
  factory Class({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    Service? service,
    StudyYear? studyYear,
    @JsonKey(
      name: 'attendanceHistory_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? attendanceHistoryAggregate,
    @JsonKey(
      name: 'attendanceDaysConstraints_aggregate',
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? attendanceDaysConstraintsAggregate,
  }) = _Class;
  Class._() : super();

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

  @override
  IconData get defaultIcon => Icons.groups_outlined;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('classes', id),
          fullPath: 'classes/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();
}
