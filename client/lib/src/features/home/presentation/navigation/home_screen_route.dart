part of 'package:church_admin/src/core/services/router/app_route.dart';

class HomeScreenRoute extends AppRoute {
  @override
  String get path => '/';

  const HomeScreenRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();

  @override
  AppRoute? redirect() => HomeScreenWebRoute.maybeRedirectToAccountSetup();
}
