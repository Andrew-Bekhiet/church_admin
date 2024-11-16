// ignore_for_file: invalid_annotation_target

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'father.freezed.dart';
part 'father.g.dart';

@freezed
@TypeMetadata()
class Father extends ViewableWithID with _$Father implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$FatherFields;

  static final QueryableType<Father> queryableType = QueryableType<Father>(
    name: 'Father',
    label: 'أباء الاعتراف',
    fieldsMetadata: fieldsMetadata,
    fromJson: Father.fromJson,
  );

  factory Father({
    required String id,
    required String name,
    String? churchId,
  }) = _Father;
  Father._();

  factory Father.fromJson(Map<String, Object?> json) => _$FatherFromJson(json);

  @override
  String get typeName => Father.queryableType.name;
}
