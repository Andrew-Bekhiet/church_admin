// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store extends ViewableWithIDAndImage with _$Store {
  factory Store({
    required String id,
    required String name,
    Family? family,
    @JsonKey(name: 'adminFamily') String? familyId,
    @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    List<Area>? areas,
    List<Street>? streets,
    LastRecordedByInfo? lastEdit,
    DateTime? photoUpdatedAt,
  }) = _Store;
  Store._() : super();

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('stores', id, lastUpdatedTime: photoUpdatedAt);
}
