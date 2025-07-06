// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_street_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $editStreetRoute,
    ];

RouteBase get $editStreetRoute => GoRouteData.$route(
      path: '/edit_street',
      factory: _$EditStreetRoute._fromState,
    );

mixin _$EditStreetRoute on GoRouteData {
  static EditStreetRoute _fromState(GoRouterState state) => EditStreetRoute(
        $extra: state.extra as Street?,
      );

  EditStreetRoute get _self => this as EditStreetRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_street',
      );

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
