// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'under_maintenance_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$underMaintenanceRoute];

RouteBase get $underMaintenanceRoute => GoRouteData.$route(
  path: '/under_maintenance',
  factory: $UnderMaintenanceRoute._fromState,
);

mixin $UnderMaintenanceRoute on GoRouteData {
  static UnderMaintenanceRoute _fromState(GoRouterState state) =>
      const UnderMaintenanceRoute();

  @override
  String get location => GoRouteData.$location('/under_maintenance');

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
