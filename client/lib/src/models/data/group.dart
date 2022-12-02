// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show AsyncMemoizerCache, PhotoObjectBase, ViewableWithID;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group extends ViewableWithID
    with _$Group, AttendanceAnalyzable
    implements PhotoObjectBase {
  factory Group({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    Service? service,
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
  IconData get defaultIcon => Icons.groups;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('areas', id),
          fullPath: 'areas/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();
}
