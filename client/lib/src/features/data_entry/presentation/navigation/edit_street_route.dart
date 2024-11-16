import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditStreetRoute extends GoRouteData {
  const EditStreetRoute({this.$extra});

  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStreet(street: $extra);
  }
}
