// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'college.freezed.dart';
part 'college.g.dart';

@freezed
class College extends ViewableWithID with _$College {
  factory College({
    required String id,
    required String name,
    String? universityId,
  }) = _College;
  College._();

  factory College.fromJson(Map<String, Object?> json) =>
      _$CollegeFromJson(json);
}
