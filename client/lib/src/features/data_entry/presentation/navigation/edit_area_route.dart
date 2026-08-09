import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'edit_area_route.g.dart';

@TypedGoRoute<EditAreaRoute>(path: '/edit_area')
class EditAreaRoute extends GoRouteData with $EditAreaRoute {
  final Area? $extra;
  const EditAreaRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditArea(area: $extra);
  }
}
