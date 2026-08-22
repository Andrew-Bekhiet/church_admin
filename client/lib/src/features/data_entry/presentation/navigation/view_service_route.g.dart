// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'view_service_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewServiceRoute];

RouteBase get $viewServiceRoute => GoRouteData.$route(
  path: '/view_service',
  factory: $ViewServiceRoute._fromState,
);

mixin $ViewServiceRoute on GoRouteData {
  static ViewServiceRoute _fromState(GoRouterState state) => ViewServiceRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Service?,
  );

  ViewServiceRoute get _self => this as ViewServiceRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_service', queryParams: {'id': _self.id});

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
