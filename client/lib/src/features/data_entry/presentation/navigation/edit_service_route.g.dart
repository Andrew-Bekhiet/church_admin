// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_service_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editServiceRoute];

RouteBase get $editServiceRoute => GoRouteData.$route(
  path: '/edit_service',
  factory: $EditServiceRoute._fromState,
);

mixin $EditServiceRoute on GoRouteData {
  static EditServiceRoute _fromState(GoRouterState state) =>
      EditServiceRoute($extra: state.extra as Service?);

  EditServiceRoute get _self => this as EditServiceRoute;

  @override
  String get location => GoRouteData.$location('/edit_service');

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
