import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class VisitsMapRoute extends HomeChildRoute {
  @override
  String get path => '/visits_map';

  const VisitsMapRoute();

  @override
  Widget build(BuildContext context) => const VisitsMapScreen();
}
