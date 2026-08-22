// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'advanced_search_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$advancedSearchRoute];

RouteBase get $advancedSearchRoute => GoRouteData.$route(
  path: '/advanced_search',
  factory: $AdvancedSearchRoute._fromState,
);

mixin $AdvancedSearchRoute on GoRouteData {
  static AdvancedSearchRoute _fromState(GoRouterState state) =>
      AdvancedSearchRoute($extra: state.extra as AdvancedQuery?);

  AdvancedSearchRoute get _self => this as AdvancedSearchRoute;

  @override
  String get location => GoRouteData.$location('/advanced_search');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
