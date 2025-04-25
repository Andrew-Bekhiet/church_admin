// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'under_maintenance_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $underMaintenanceRoute,
    ];

RouteBase get $underMaintenanceRoute => GoRouteData.$route(
      path: '/under_maintenance',
      factory: $UnderMaintenanceRouteExtension._fromState,
    );

extension $UnderMaintenanceRouteExtension on UnderMaintenanceRoute {
  static UnderMaintenanceRoute _fromState(GoRouterState state) =>
      const UnderMaintenanceRoute();

  String get location => GoRouteData.$location(
        '/under_maintenance',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
