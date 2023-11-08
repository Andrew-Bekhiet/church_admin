// ignore_for_file: invalid_annotation_target

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.freezed.dart';
part 'school.g.dart';

@freezed
@TypeMetadata()
class School extends ViewableWithID with _$School implements ToJson {
  static Map<String, FieldMetadata> get fieldsMetadata => _$SchoolFields;

  static final QueryableType<School> queryableType = QueryableType<School>(
    name: 'School',
    label: 'المدارس',
    fieldsMetadata: fieldsMetadata,
    fromJson: School.fromJson,
  );

  factory School({
    required String id,
    required String name,
  }) = _School;
  School._();

  factory School.fromJson(Map<String, Object?> json) => _$SchoolFromJson(json);
}
