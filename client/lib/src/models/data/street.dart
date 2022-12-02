// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
class Street extends ViewableWithID with _$Street implements PhotoObjectBase {
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
  IconData get defaultIcon => Icons.pin_drop;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () async =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('streets', id),
          fullPath: 'streets/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();
}
