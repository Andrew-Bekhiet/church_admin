import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_family_route.g.dart';

@TypedGoRoute<EditFamilyRoute>(path: '/edit_family')
class EditFamilyRoute extends GoRouteData with $EditFamilyRoute {
  final EditFamilyExtra? $extra;
  const EditFamilyRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditFamily(
      family: $extra?.family,
      withChildren: $extra?.children,
      withParents: $extra?.parents,
      withAddress: Address(street: $extra?.street, area: $extra?.area),
    );
  }
}

@JsonSerializable()
class EditFamilyExtra extends SerializableExtra {
  final Family? family;
  final Street? street;
  final Area? area;
  final Set<Family>? children;
  final Set<Family>? parents;

  @override
  String get typeName => 'EditFamilyExtra';

  const EditFamilyExtra({
    this.family,
    this.street,
    this.area,
    this.children,
    this.parents,
  });

  factory EditFamilyExtra.fromJson(Json json) =>
      _$EditFamilyExtraFromJson(json);

  @override
  Json toJson() => _$EditFamilyExtraToJson(this);
}
