part of 'package:church_admin/src/core/services/router/app_route.dart';

class SettingsRoute extends HomeChildRoute {
  @override
  String get path => '/settings';

  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsScreen();
}
