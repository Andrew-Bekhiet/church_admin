// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area extends ViewableWithID with _$Area implements PhotoObjectBase {
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
  IconData get defaultIcon => Icons.pin_drop;

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
