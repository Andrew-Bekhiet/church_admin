// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'view_group_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewGroupRoute];

RouteBase get $viewGroupRoute => GoRouteData.$route(
  path: '/view_group',
  factory: $ViewGroupRoute._fromState,
);

mixin $ViewGroupRoute on GoRouteData {
  static ViewGroupRoute _fromState(GoRouterState state) => ViewGroupRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Group?,
  );

  ViewGroupRoute get _self => this as ViewGroupRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_group', queryParams: {'id': _self.id});

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
