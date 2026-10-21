part of 'package:church_admin/src/core/services/router/app_route.dart';

class ExportEntitiesSelectionRoute extends HomeChildRoute {
  @override
  String get path => '/export_entities_selection';

  const ExportEntitiesSelectionRoute();

  @override
  Widget build(BuildContext context) {
    return const ExportEntitiesSelectionScreen();
  }
}
