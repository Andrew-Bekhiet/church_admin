import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'export_entities_selection_route.g.dart';

@TypedGoRoute<ExportEntitiesSelectionRoute>(path: '/export_entities_selection')
class ExportEntitiesSelectionRoute extends GoRouteData
    with $ExportEntitiesSelectionRoute {
  const ExportEntitiesSelectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ExportEntitiesSelectionScreen();
  }
}
