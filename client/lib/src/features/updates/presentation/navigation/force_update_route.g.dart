// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'force_update_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$forceUpdateRoute];

RouteBase get $forceUpdateRoute => GoRouteData.$route(
  path: '/force_update',
  factory: $ForceUpdateRoute._fromState,
);

mixin $ForceUpdateRoute on GoRouteData {
  static ForceUpdateRoute _fromState(GoRouterState state) =>
      const ForceUpdateRoute();

  @override
  String get location => GoRouteData.$location('/force_update');

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
