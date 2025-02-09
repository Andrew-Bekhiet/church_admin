import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
@TypeMetadata()
class Tag extends ViewableWithID with _$Tag implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$TagFields;

  static final QueryableType<Tag> queryableType = QueryableType<Tag>(
    name: 'Tag',
    label: 'الشارات',
    fieldsMetadata: fieldsMetadata,
    fromJson: Tag.fromJson,
  );

  factory Tag({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _Tag;
  Tag._();

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);

  @override
  String get typeName => Tag.queryableType.name;
}
