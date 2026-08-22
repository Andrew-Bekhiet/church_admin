// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'view_store_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewStoreRoute];

RouteBase get $viewStoreRoute => GoRouteData.$route(
  path: '/view_store',
  factory: $ViewStoreRoute._fromState,
);

mixin $ViewStoreRoute on GoRouteData {
  static ViewStoreRoute _fromState(GoRouterState state) => ViewStoreRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Store?,
  );

  ViewStoreRoute get _self => this as ViewStoreRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_store', queryParams: {'id': _self.id});

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
