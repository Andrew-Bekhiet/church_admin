import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'person_analysis_route.g.dart';

@JsonSerializable()
class PersonAnalysisExtra extends SerializableExtra {
  final Person person;

  @override
  String get typeName => 'PersonAnalysisExtra';

  const PersonAnalysisExtra({required this.person});

  factory PersonAnalysisExtra.fromJson(Json json) =>
      _$PersonAnalysisExtraFromJson(json);

  @override
  Json toJson() => _$PersonAnalysisExtraToJson(this);
}

@TypedGoRoute<PersonAnalysisRoute>(path: '/person_analysis')
class PersonAnalysisRoute extends GoRouteData with $PersonAnalysisRoute {
  final PersonAnalysisExtra $extra;
  const PersonAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PersonAnalysis(person: $extra.person);
  }
}
