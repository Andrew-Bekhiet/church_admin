// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_person_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editPersonRoute];

RouteBase get $editPersonRoute => GoRouteData.$route(
  path: '/edit_person',
  hasOverriddenOnExit: false,
  factory: $EditPersonRoute._fromState,
);

mixin $EditPersonRoute on GoRouteData {
  static EditPersonRoute _fromState(GoRouterState state) =>
      EditPersonRoute($extra: state.extra as PersonEditIntent?);

  EditPersonRoute get _self => this as EditPersonRoute;

  @override
  String get location => GoRouteData.$location('/edit_person');

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
