// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag extends ViewableWithID with _$Tag implements ToJson {
  static final fields = _$$_TagFieldMap.keys.toList();

  @JsonSerializable(createFieldMap: true)
  factory Tag({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _Tag;
  Tag._();

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
