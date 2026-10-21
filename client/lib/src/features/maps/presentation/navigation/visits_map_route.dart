part of 'package:church_admin/src/core/services/router/app_route.dart';

class VisitsMapRoute extends HomeChildRoute {
  static const String routePath = '/visits_map';

  @override
  String get path => routePath;

  const VisitsMapRoute();

  @override
  Widget build(BuildContext context) => const VisitsMapScreen();
}
