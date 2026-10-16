import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

part 'download_app_route.g.dart';

@TypedGoRoute<DownloadAppRoute>(path: '/download')
class DownloadAppRoute extends GoRouteData with $DownloadAppRoute {
  const DownloadAppRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DownloadAppScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    return const HomeScreenWebRoute().redirect(context, state);
  }
}
