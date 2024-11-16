import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditServiceRoute extends GoRouteData {
  const EditServiceRoute({this.$extra});

  final Service? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditService(service: $extra);
  }
}
