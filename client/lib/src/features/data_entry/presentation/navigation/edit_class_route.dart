import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_class_route.g.dart';

@JsonSerializable()
class EditClassExtra extends SerializableExtra {
  final Class? $class;
  final Service? service;

  const EditClassExtra({this.$class, this.service});

  factory EditClassExtra.fromJson(Json json) => _$EditClassExtraFromJson(json);

  @override
  String get typeName => 'EditClassExtra';

  @override
  Json toJson() => _$EditClassExtraToJson(this);
}

class EditClassRoute extends GoRouteData {
  const EditClassRoute({this.$extra});

  final EditClassExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditClass(
      class$: $extra?.$class,
      service: $extra?.service,
    );
  }
}
