// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

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
  }) = _Street;
  Street._() : super();

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'streets/$id',
          downloadUrlFn: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('streets', id),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;
}
