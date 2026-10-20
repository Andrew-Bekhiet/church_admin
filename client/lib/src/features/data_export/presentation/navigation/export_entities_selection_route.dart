import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ExportEntitiesSelectionRoute extends HomeChildRoute {
  @override
  String get path => '/export_entities_selection';

  const ExportEntitiesSelectionRoute();

  @override
  Widget build(BuildContext context) {
    return const ExportEntitiesSelectionScreen();
  }
}
