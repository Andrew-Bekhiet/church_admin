import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_group_route.g.dart';

@JsonSerializable()
class EditGroupExtra extends SerializableExtra {
  final Group? group;
  final Service? service;

  const EditGroupExtra({this.group, this.service});

  factory EditGroupExtra.fromJson(Json json) => _$EditGroupExtraFromJson(json);

  @override
  String get typeName => 'EditGroupExtra';

  @override
  Json toJson() => _$EditGroupExtraToJson(this);
}

class EditGroupRoute extends GoRouteData {
  const EditGroupRoute({this.$extra});

  final EditGroupExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditGroup(
      group: $extra?.group,
      service: $extra?.service,
    );
  }
}
