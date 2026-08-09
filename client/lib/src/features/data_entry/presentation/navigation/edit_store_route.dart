import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_store_route.g.dart';

@JsonSerializable()
class EditStoreExtra extends SerializableExtra {
  final Area? area;
  final Street? street;
  final Store? store;
  final Family? family;

  @override
  String get typeName => 'EditStoreExtra';

  const EditStoreExtra({this.area, this.street, this.store, this.family});

  factory EditStoreExtra.fromJson(Json json) => _$EditStoreExtraFromJson(json);

  @override
  Json toJson() => _$EditStoreExtraToJson(this);
}

@TypedGoRoute<EditStoreRoute>(path: '/edit_store')
class EditStoreRoute extends GoRouteData with $EditStoreRoute {
  final EditStoreExtra? $extra;
  const EditStoreRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStore(store: $extra?.store, withFamily: $extra?.family);
  }
}
