// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'dart:ui';

import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart' show ViewableWithID;
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group extends ViewableWithID with _$Group {
  factory Group({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
  }) = _Group;
  Group._() : super();

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
}

Group? groupFromJson(dynamic data) =>
    data == null ? null : Group.fromJson(data);
Json? groupToJson(Group? group) => group?.toJson();

List<Group>? groupsFromJson(dynamic data) =>
    data is List ? data.map(groupFromJson).whereNotNull().toList() : null;
List<Json>? groupsToJson(List<Group>? groups) => groups?.map(groupToJson).whereNotNull().toList();
