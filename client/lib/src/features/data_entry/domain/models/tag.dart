import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الشارات')
class Tag extends ViewableWithID with _$Tag implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  const Tag({
    required this.id,
    required this.name,
    this.color,
  });

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);

  @override
  Json toJson() => _$TagToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().tag.name;
}
