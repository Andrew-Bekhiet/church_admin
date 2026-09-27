// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'unapproved_user_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$unapprovedUserRoute];

RouteBase get $unapprovedUserRoute => GoRouteData.$route(
  path: '/unapproved_user',
  hasOverriddenOnExit: false,
  factory: $UnapprovedUserRoute._fromState,
);

mixin $UnapprovedUserRoute on GoRouteData {
  static UnapprovedUserRoute _fromState(GoRouterState state) =>
      const UnapprovedUserRoute();

  @override
  String get location => GoRouteData.$location('/unapproved_user');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
