import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DownloadAppRoute extends AppRoute {
  @override
  String get path => '/download';

  const DownloadAppRoute();

  @override
  Widget build(BuildContext context) {
    return const DownloadAppScreen();
  }

  @override
  AppRoute? redirect() {
    return HomeScreenWebRoute.maybeRedirectToAccountSetup();
  }
}
