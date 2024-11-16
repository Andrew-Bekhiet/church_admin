import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewStreetRoute extends GoRouteData {
  const ViewStreetRoute({required this.id, this.$extra});

  final String id;
  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStreet(streetId: id, street: $extra);
  }
}
