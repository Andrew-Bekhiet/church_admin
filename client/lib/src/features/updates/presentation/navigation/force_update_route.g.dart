// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_update_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $forceUpdateRoute,
    ];

RouteBase get $forceUpdateRoute => GoRouteData.$route(
      path: '/force_update',
      factory: $ForceUpdateRouteExtension._fromState,
    );

extension $ForceUpdateRouteExtension on ForceUpdateRoute {
  static ForceUpdateRoute _fromState(GoRouterState state) =>
      const ForceUpdateRoute();

  String get location => GoRouteData.$location(
        '/force_update',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
