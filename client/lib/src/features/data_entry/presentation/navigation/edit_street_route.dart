import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_street_route.g.dart';

@JsonSerializable()
class EditStreetExtra extends SerializableExtra {
  final Street? street;
  final Area? area;

  const EditStreetExtra({
    this.street,
    this.area,
  });

  factory EditStreetExtra.fromJson(Json json) =>
      _$EditStreetExtraFromJson(json);

  @override
  String get typeName => 'EditStreetExtra';

  @override
  Json toJson() => _$EditStreetExtraToJson(this);
}

@TypedGoRoute<EditStreetRoute>(path: '/edit_street')
class EditStreetRoute extends GoRouteData with $EditStreetRoute {
  const EditStreetRoute({this.$extra});

  final EditStreetExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStreet(street: $extra?.street, withArea: $extra?.area);
  }
}
