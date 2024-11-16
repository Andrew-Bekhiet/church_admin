import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewAreaRoute extends GoRouteData {
  const ViewAreaRoute({required this.id, this.$extra});

  final String id;
  final Area? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewArea(areaId: id, area: $extra);
  }
}
