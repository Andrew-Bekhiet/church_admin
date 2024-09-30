// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobby.freezed.dart';
part 'hobby.g.dart';

@freezed
@TypeMetadata()
class Hobby extends ViewableWithID with _$Hobby implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$HobbyFields;

  static final QueryableType<Hobby> queryableType = QueryableType<Hobby>(
    name: 'Hobby',
    label: 'الهوايات',
    fieldsMetadata: fieldsMetadata,
    fromJson: Hobby.fromJson,
  );

  factory Hobby({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _Hobby;
  Hobby._();

  factory Hobby.fromJson(Map<String, Object?> json) => _$HobbyFromJson(json);

  @override
  String get typeName => Hobby.queryableType.name;
}
