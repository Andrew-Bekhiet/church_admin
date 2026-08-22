// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'view_class_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewClassRoute];

RouteBase get $viewClassRoute => GoRouteData.$route(
  path: '/view_class',
  factory: $ViewClassRoute._fromState,
);

mixin $ViewClassRoute on GoRouteData {
  static ViewClassRoute _fromState(GoRouterState state) => ViewClassRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Class?,
  );

  ViewClassRoute get _self => this as ViewClassRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_class', queryParams: {'id': _self.id});

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
