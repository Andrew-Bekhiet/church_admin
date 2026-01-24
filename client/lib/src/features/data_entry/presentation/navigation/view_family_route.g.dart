// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_family_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$viewFamilyRoute];

RouteBase get $viewFamilyRoute => GoRouteData.$route(
  path: '/view_family',
  factory: $ViewFamilyRoute._fromState,
);

mixin $ViewFamilyRoute on GoRouteData {
  static ViewFamilyRoute _fromState(GoRouterState state) => ViewFamilyRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Family?,
  );

  ViewFamilyRoute get _self => this as ViewFamilyRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_family', queryParams: {'id': _self.id});

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
