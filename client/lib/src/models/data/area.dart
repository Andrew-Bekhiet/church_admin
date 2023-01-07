// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area extends ViewableWithIDAndImage with _$Area {
  factory Area({
    required String id,
    required String name,
    @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson) Polygon? bounds,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
  }) = _Area;
  Area._() : super();

  factory Area.fromJson(Map<String, Object?> json) => _$AreaFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'areas/$id',
          downloadUrlFn: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('areas', id),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
