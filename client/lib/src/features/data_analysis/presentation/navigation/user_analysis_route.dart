import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'user_analysis_route.g.dart';

@TypedGoRoute<UserAnalysisRoute>(path: '/user_analysis')
class UserAnalysisRoute extends GoRouteData with $UserAnalysisRoute {
  final UserAnalysisExtra $extra;
  const UserAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserAnalysis(user: $extra.user);
  }
}

@JsonSerializable()
class UserAnalysisExtra extends SerializableExtra {
  final User user;

  @override
  String get typeName => 'UserAnalysisExtra';

  const UserAnalysisExtra({required this.user});

  factory UserAnalysisExtra.fromJson(Json json) =>
      _$UserAnalysisExtraFromJson(json);

  @override
  Json toJson() => _$UserAnalysisExtraToJson(this);
}
