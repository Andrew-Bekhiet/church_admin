part of 'package:church_admin/src/core/services/router/app_route.dart';

class ExportEntitiesSelectionRoute extends HomeChildRoute {
  static const String routePath = '/export_entities_selection';

  @override
  String get path => routePath;

  const ExportEntitiesSelectionRoute();

  @override
  Widget build(BuildContext context) {
    return const ExportEntitiesSelectionScreen();
  }
}
