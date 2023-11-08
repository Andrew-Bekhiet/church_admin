// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_state.freezed.dart';
part 'person_state.g.dart';

@freezed
@TypeMetadata()
class PersonState extends ViewableWithID with _$PersonState implements ToJson {
  static Map<String, FieldMetadata> get fieldsMetadata => _$PersonStateFields;

  static final QueryableType<PersonState> queryableType =
      QueryableType<PersonState>(
    name: 'PersonState',
    label: 'الحالات الروحية',
    fieldsMetadata: fieldsMetadata,
    fromJson: PersonState.fromJson,
  );

  factory PersonState({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _PersonState;
  PersonState._() : super();

  factory PersonState.fromJson(Map<String, Object?> json) =>
      _$PersonStateFromJson(json);
}
