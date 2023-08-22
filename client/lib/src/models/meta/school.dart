// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.freezed.dart';
part 'school.g.dart';

@freezed
class School extends ViewableWithID with _$School implements ToJson {
  static final fields = _$$_SchoolFieldMap.keys.toList();

  @JsonSerializable(createFieldMap: true)
  factory School({
    required String id,
    required String name,
  }) = _School;
  School._();

  factory School.fromJson(Map<String, Object?> json) => _$SchoolFromJson(json);
}
