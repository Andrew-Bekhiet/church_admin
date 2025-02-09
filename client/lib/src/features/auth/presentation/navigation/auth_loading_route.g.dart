// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_loading_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $authLoadingRoute,
    ];

RouteBase get $authLoadingRoute => GoRouteData.$route(
      path: '/auth_loading',
      factory: $AuthLoadingRouteExtension._fromState,
    );

extension $AuthLoadingRouteExtension on AuthLoadingRoute {
  static AuthLoadingRoute _fromState(GoRouterState state) =>
      const AuthLoadingRoute();

  String get location => GoRouteData.$location(
        '/auth_loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
