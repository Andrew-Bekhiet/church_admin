// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'multi_factor_login_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$multiFactorLoginRoute];

RouteBase get $multiFactorLoginRoute => GoRouteData.$route(
  path: '/multifactor',
  factory: $MultiFactorLoginRoute._fromState,
);

mixin $MultiFactorLoginRoute on GoRouteData {
  static MultiFactorLoginRoute _fromState(GoRouterState state) =>
      const MultiFactorLoginRoute();

  @override
  String get location => GoRouteData.$location('/multifactor');

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
