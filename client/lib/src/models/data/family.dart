// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family extends ViewableWithIDAndImage with _$Family {
  factory Family({
    required String id,
    required String name,
    String? address,
    @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
    String? notes,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
  }) = _Family;
  Family._() : super();

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'families/$id',
          downloadUrlFn: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('families', id),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
