import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'download_app_route.g.dart';

@TypedGoRoute<DownloadAppRoute>(path: '/download')
class DownloadAppRoute extends GoRouteData {
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
