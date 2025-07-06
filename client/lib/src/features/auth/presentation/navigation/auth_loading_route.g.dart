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
      factory: _$AuthLoadingRoute._fromState,
    );

mixin _$AuthLoadingRoute on GoRouteData {
  static AuthLoadingRoute _fromState(GoRouterState state) =>
      const AuthLoadingRoute();

  @override
  String get location => GoRouteData.$location(
        '/auth_loading',
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
