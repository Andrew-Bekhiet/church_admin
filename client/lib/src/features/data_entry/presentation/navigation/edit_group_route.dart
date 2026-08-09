import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_group_route.g.dart';

@JsonSerializable()
class EditGroupExtra extends SerializableExtra {
  final Group? group;
  final Service? service;

  @override
  String get typeName => 'EditGroupExtra';

  const EditGroupExtra({this.group, this.service});

  factory EditGroupExtra.fromJson(Json json) => _$EditGroupExtraFromJson(json);

  @override
  Json toJson() => _$EditGroupExtraToJson(this);
}

@TypedGoRoute<EditGroupRoute>(path: '/edit_group')
class EditGroupRoute extends GoRouteData with $EditGroupRoute {
  final EditGroupExtra? $extra;
  const EditGroupRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditGroup(
      group: $extra?.group,
      withService: $extra?.service,
    );
  }
}
