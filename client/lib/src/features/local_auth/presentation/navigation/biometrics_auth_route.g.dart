// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'biometrics_auth_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$biometricsAuthRoute];

RouteBase get $biometricsAuthRoute => GoRouteData.$route(
  path: '/biometrics_auth',
  hasOverriddenOnExit: false,
  factory: $BiometricsAuthRoute._fromState,
);

mixin $BiometricsAuthRoute on GoRouteData {
  static BiometricsAuthRoute _fromState(GoRouterState state) =>
      BiometricsAuthRoute(next: state.uri.queryParameters['next'] ?? '/');

  BiometricsAuthRoute get _self => this as BiometricsAuthRoute;

  @override
  String get location => GoRouteData.$location(
    '/biometrics_auth',
    queryParams: {if (_self.next != '/') 'next': _self.next},
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
