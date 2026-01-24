import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'under_maintenance_route.g.dart';

@TypedGoRoute<UnderMaintenanceRoute>(path: '/under_maintenance')
class UnderMaintenanceRoute extends GoRouteData with $UnderMaintenanceRoute {
  const UnderMaintenanceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      UnderMaintenanceScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!FeatureFlagsRepository.I.isUnderMaintenance) {
      return '/';
    }

    return null;
  }
}
