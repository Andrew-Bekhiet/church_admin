// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_app_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $downloadAppRoute,
    ];

RouteBase get $downloadAppRoute => GoRouteData.$route(
      path: '/download',
      factory: $DownloadAppRouteExtension._fromState,
    );

extension $DownloadAppRouteExtension on DownloadAppRoute {
  static DownloadAppRoute _fromState(GoRouterState state) =>
      const DownloadAppRoute();

  String get location => GoRouteData.$location(
        '/download',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
