part of 'package:church_admin/src/core/services/router/app_route.dart';

class HomeScreenRoute extends AppRoute {
  static const String routePath = '/';

  @override
  String get path => routePath;

  const HomeScreenRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();

  @override
  AppRoute? redirect() => HomeScreenWebRoute.maybeRedirectToAccountSetup();
}
