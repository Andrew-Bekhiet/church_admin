import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_state.freezed.dart';
part 'person_state.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الحالات الروحية')
class PersonState extends ViewableWithID
    with _$PersonState
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;
  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  String get typeName => AdvancedQueriesMetadata().personState.name;

  const PersonState({
    required this.id,
    required this.name,
    this.color,
  });

  factory PersonState.fromJson(Map<String, Object?> json) =>
      _$PersonStateFromJson(json);

  @override
  Json toJson() => _$PersonStateToJson(this);
}
