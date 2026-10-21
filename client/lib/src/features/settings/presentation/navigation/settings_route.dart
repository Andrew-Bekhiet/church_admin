part of 'package:church_admin/src/core/services/router/app_route.dart';

class SettingsRoute extends HomeChildRoute {
  static const String routePath = '/settings';

  @override
  String get path => routePath;

  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsScreen();
}
