// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outdated_feature_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $outdatedFeatureRoute,
    ];

RouteBase get $outdatedFeatureRoute => GoRouteData.$route(
      path: '/outdated_feature',
      factory: $OutdatedFeatureRouteExtension._fromState,
    );

extension $OutdatedFeatureRouteExtension on OutdatedFeatureRoute {
  static OutdatedFeatureRoute _fromState(GoRouterState state) =>
      const OutdatedFeatureRoute();

  String get location => GoRouteData.$location(
        '/outdated_feature',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
