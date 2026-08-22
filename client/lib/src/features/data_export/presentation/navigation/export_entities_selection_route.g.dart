// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'export_entities_selection_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$exportEntitiesSelectionRoute];

RouteBase get $exportEntitiesSelectionRoute => GoRouteData.$route(
  path: '/export_entities_selection',
  factory: $ExportEntitiesSelectionRoute._fromState,
);

mixin $ExportEntitiesSelectionRoute on GoRouteData {
  static ExportEntitiesSelectionRoute _fromState(GoRouterState state) =>
      const ExportEntitiesSelectionRoute();

  @override
  String get location => GoRouteData.$location('/export_entities_selection');

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
