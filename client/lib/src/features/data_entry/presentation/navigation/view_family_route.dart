import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_family_route.g.dart';

@TypedGoRoute<ViewFamilyRoute>(path: '/view_family')
class ViewFamilyRoute extends GoRouteData with $ViewFamilyRoute {
  const ViewFamilyRoute({required this.id, this.$extra});

  final String id;
  final Family? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewFamily(familyId: id, family: $extra);
  }
}
