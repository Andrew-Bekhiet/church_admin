import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class SettingsRoute extends HomeChildRoute {
  @override
  String get path => '/settings';

  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsScreen();
}
