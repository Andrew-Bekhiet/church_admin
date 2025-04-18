import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'force_update_route.g.dart';

@TypedGoRoute<ForceUpdateRoute>(path: '/force_update')
class ForceUpdateRoute extends GoRouteData {
  const ForceUpdateRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ForceUpdateScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!FeatureFlagsRepository.I.mustForceUpdate) {
      return '/';
    }

    return null;
  }
}
