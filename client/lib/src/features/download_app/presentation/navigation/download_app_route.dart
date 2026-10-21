part of 'package:church_admin/src/core/services/router/app_route.dart';

class DownloadAppRoute extends AppRoute {
  static const String routePath = '/download';

  @override
  String get path => routePath;

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
