import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisitsMapRoute extends GoRouteData {
  const VisitsMapRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VisitsMapScreen();
}
