import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_person_route.g.dart';

@TypedGoRoute<ViewPersonRoute>(path: '/view_person')
class ViewPersonRoute extends GoRouteData with _$ViewPersonRoute {
  const ViewPersonRoute({required this.id, this.$extra});

  final String id;
  final Person? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewPerson(personId: id, person: $extra);
  }
}
