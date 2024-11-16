import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditAreaRoute extends GoRouteData {
  const EditAreaRoute({this.$extra});

  final Area? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditArea(area: $extra);
  }
}
