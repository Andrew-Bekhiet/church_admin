// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_factor_login_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $multiFactorLoginRoute,
    ];

RouteBase get $multiFactorLoginRoute => GoRouteData.$route(
      path: '/multifactor',
      factory: $MultiFactorLoginRouteExtension._fromState,
    );

extension $MultiFactorLoginRouteExtension on MultiFactorLoginRoute {
  static MultiFactorLoginRoute _fromState(GoRouterState state) =>
      const MultiFactorLoginRoute();

  String get location => GoRouteData.$location(
        '/multifactor',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
