import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'edit_person_route.g.dart';

@JsonSerializable()
class EditPersonExtra extends SerializableExtra {
  final Person? person;
  final Family? family;
  final Service? service;
  final Group? group;
  final StudyYear? studyYear;
  final bool? gender;

  const EditPersonExtra({
    this.person,
    this.family,
    this.service,
    this.group,
    this.studyYear,
    this.gender,
  });

  factory EditPersonExtra.fromJson(Json json) =>
      _$EditPersonExtraFromJson(json);

  @override
  String get typeName => 'EditPersonExtra';

  @override
  Json toJson() => _$EditPersonExtraToJson(this);
}

class EditPersonRoute extends GoRouteData {
  const EditPersonRoute({this.$extra});

  final EditPersonExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditPerson(
      person: $extra?.person,
      family: $extra?.family,
      service: $extra?.service,
      group: $extra?.group,
      studyYear: $extra?.studyYear,
      gender: $extra?.gender,
    );
  }
}
