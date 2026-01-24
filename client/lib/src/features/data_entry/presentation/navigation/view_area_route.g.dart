// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_area_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewAreaRoute];

RouteBase get $viewAreaRoute =>
    GoRouteData.$route(path: '/view_area', factory: $ViewAreaRoute._fromState);

mixin $ViewAreaRoute on GoRouteData {
  static ViewAreaRoute _fromState(GoRouterState state) => ViewAreaRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Area?,
  );

  ViewAreaRoute get _self => this as ViewAreaRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_area', queryParams: {'id': _self.id});

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
