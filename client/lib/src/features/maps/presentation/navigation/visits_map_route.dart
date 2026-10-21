part of 'package:church_admin/src/core/services/router/app_route.dart';

class VisitsMapRoute extends HomeChildRoute {
  @override
  String get path => '/visits_map';

  const VisitsMapRoute();

  @override
  Widget build(BuildContext context) => const VisitsMapScreen();
}
