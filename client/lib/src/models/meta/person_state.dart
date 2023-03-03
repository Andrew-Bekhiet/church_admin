// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_state.freezed.dart';
part 'person_state.g.dart';

@freezed
class PersonState extends ViewableWithID with _$PersonState {
  factory PersonState({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
  }) = _PersonState;
  PersonState._() : super();

  factory PersonState.fromJson(Map<String, Object?> json) =>
      _$PersonStateFromJson(json);
}
