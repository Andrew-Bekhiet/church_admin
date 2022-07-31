// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family extends ViewableWithID with _$Family implements PhotoObjectBase {
  factory Family({
    required String id,
    required String name,
    String? address,
    @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
        Polygon? geolocation,
    String? notes,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
  }) = _Family;
  Family._() : super();

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  IconData get defaultIcon => Icons.pin_drop;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('families', id),
          fullPath: 'families/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();
}
