import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_type.freezed.dart';
part 'person_type.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الحالات الاجتماعية')
class PersonType extends ViewableWithID
    with _$PersonType
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  const PersonType({
    required this.id,
    required this.name,
    this.color,
  });

  factory PersonType.fromJson(Map<String, Object?> json) =>
      _$PersonTypeFromJson(json);

  @override
  Json toJson() => _$PersonTypeToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().personType.name;
}
