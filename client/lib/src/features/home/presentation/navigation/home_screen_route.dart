import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreenRoute extends AppRoute {
  @override
  String get path => '/';

  const HomeScreenRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();

  @override
  AppRoute? redirect() => HomeScreenWebRoute.maybeRedirectToAccountSetup();
}
