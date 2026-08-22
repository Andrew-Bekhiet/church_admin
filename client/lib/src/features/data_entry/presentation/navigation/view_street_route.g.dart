// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'view_street_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewStreetRoute];

RouteBase get $viewStreetRoute => GoRouteData.$route(
  path: '/view_street',
  factory: $ViewStreetRoute._fromState,
);

mixin $ViewStreetRoute on GoRouteData {
  static ViewStreetRoute _fromState(GoRouterState state) => ViewStreetRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Street?,
  );

  ViewStreetRoute get _self => this as ViewStreetRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_street', queryParams: {'id': _self.id});

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
