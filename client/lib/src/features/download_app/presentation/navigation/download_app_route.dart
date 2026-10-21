part of 'package:church_admin/src/core/services/router/app_route.dart';

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
