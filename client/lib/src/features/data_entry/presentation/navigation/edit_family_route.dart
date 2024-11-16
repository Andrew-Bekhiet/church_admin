import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_family_route.g.dart';

@JsonSerializable()
class EditFamilyExtra extends SerializableExtra {
  final Family? family;
  final Street? street;
  final Set<Family>? children;
  final Set<Family>? parents;

  const EditFamilyExtra({
    this.family,
    this.street,
    this.children,
    this.parents,
  });

  factory EditFamilyExtra.fromJson(Json json) =>
      _$EditFamilyExtraFromJson(json);

  @override
  String get typeName => 'EditFamilyExtra';

  @override
  Json toJson() => _$EditFamilyExtraToJson(this);
}

class EditFamilyRoute extends GoRouteData {
  const EditFamilyRoute({this.$extra});

  final EditFamilyExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditFamily(
      family: $extra?.family,
      children: $extra?.children,
      parents: $extra?.parents,
    );
  }
}
