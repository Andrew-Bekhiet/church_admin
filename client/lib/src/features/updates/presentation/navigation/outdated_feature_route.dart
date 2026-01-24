import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'outdated_feature_route.g.dart';

@TypedGoRoute<OutdatedFeatureRoute>(path: '/outdated_feature')
class OutdatedFeatureRoute extends GoRouteData with $OutdatedFeatureRoute {
  const OutdatedFeatureRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OutdatedFeatureScreen();
}
