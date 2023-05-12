// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
class Street extends ViewableWithIDAndImage with _$Street {
  factory Street({
    required String id,
    required String name,
    @JsonKey(fromJson: lineFromJson, toJson: lineToJson) Line? line,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    List<Area>? areas,
    LastRecordedByInfo? lastEdit,
  }) = _Street;
  Street._() : super();

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'streets/$id',
          downloadUrlFn: () => FunctionsService.I.getDownloadUrl('streets', id),
          uploadUrlFn: ({contentType, overrideId}) =>
              FunctionsService.I.getUploadUrl(
            'streets',
            overrideId ?? id,
            contentType: contentType,
          ),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
