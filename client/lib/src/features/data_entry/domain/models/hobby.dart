import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobby.freezed.dart';
part 'hobby.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الهوايات')
class Hobby extends ViewableWithID with _$Hobby implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  String get typeName => AdvancedQueriesMetadata().hobby.name;

  const Hobby({
    required this.id,
    required this.name,
    this.color,
  });

  factory Hobby.fromJson(Map<String, Object?> json) => _$HobbyFromJson(json);

  @override
  Json toJson() => _$HobbyToJson(this);
}
