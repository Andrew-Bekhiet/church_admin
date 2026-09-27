// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'outdated_feature_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$outdatedFeatureRoute];

RouteBase get $outdatedFeatureRoute => GoRouteData.$route(
  path: '/outdated_feature',
  hasOverriddenOnExit: false,
  factory: $OutdatedFeatureRoute._fromState,
);

mixin $OutdatedFeatureRoute on GoRouteData {
  static OutdatedFeatureRoute _fromState(GoRouterState state) =>
      const OutdatedFeatureRoute();

  @override
  String get location => GoRouteData.$location('/outdated_feature');

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
