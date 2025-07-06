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
      factory: _$DownloadAppRoute._fromState,
    );

mixin _$DownloadAppRoute on GoRouteData {
  static DownloadAppRoute _fromState(GoRouterState state) =>
      const DownloadAppRoute();

  @override
  String get location => GoRouteData.$location(
        '/download',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
