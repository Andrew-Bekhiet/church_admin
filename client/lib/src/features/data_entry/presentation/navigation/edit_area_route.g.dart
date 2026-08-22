// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_area_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editAreaRoute];

RouteBase get $editAreaRoute =>
    GoRouteData.$route(path: '/edit_area', factory: $EditAreaRoute._fromState);

mixin $EditAreaRoute on GoRouteData {
  static EditAreaRoute _fromState(GoRouterState state) =>
      EditAreaRoute($extra: state.extra as Area?);

  EditAreaRoute get _self => this as EditAreaRoute;

  @override
  String get location => GoRouteData.$location('/edit_area');

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
