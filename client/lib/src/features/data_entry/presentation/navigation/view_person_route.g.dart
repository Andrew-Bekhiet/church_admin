// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'view_person_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewPersonRoute];

RouteBase get $viewPersonRoute => GoRouteData.$route(
  path: '/view_person',
  factory: $ViewPersonRoute._fromState,
);

mixin $ViewPersonRoute on GoRouteData {
  static ViewPersonRoute _fromState(GoRouterState state) => ViewPersonRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Person?,
  );

  ViewPersonRoute get _self => this as ViewPersonRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_person', queryParams: {'id': _self.id});

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
