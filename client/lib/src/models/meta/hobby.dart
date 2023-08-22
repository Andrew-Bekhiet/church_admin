// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobby.freezed.dart';
part 'hobby.g.dart';

@freezed
class Hobby extends ViewableWithID with _$Hobby implements ToJson {
  static final fields = _$$_HobbyFieldMap.keys.toList();

  @JsonSerializable(createFieldMap: true)
  factory Hobby({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _Hobby;
  Hobby._();

  factory Hobby.fromJson(Map<String, Object?> json) => _$HobbyFromJson(json);
}
