// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'visits_map_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$visitsMapRoute];

RouteBase get $visitsMapRoute => GoRouteData.$route(
  path: '/visits_map',
  factory: $VisitsMapRoute._fromState,
);

mixin $VisitsMapRoute on GoRouteData {
  static VisitsMapRoute _fromState(GoRouterState state) =>
      const VisitsMapRoute();

  @override
  String get location => GoRouteData.$location('/visits_map');

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
