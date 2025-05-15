import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_type.freezed.dart';
part 'person_type.g.dart';

@freezed
@TypeMetadata()
abstract class PersonType extends ViewableWithID
    with _$PersonType
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$PersonTypeFields;

  static final QueryableType<PersonType> queryableType =
      QueryableType<PersonType>(
    name: 'PersonType',
    label: 'الحالات الاجتماعية',
    fieldsMetadata: fieldsMetadata,
    fromJson: PersonType.fromJson,
  );

  factory PersonType({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _PersonType;
  PersonType._() : super();

  factory PersonType.fromJson(Map<String, Object?> json) =>
      _$PersonTypeFromJson(json);

  @override
  String get typeName => PersonType.queryableType.name;
}
