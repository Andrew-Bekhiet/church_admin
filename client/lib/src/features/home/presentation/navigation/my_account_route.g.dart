// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'my_account_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$myAccountRoute];

RouteBase get $myAccountRoute => GoRouteData.$route(
  path: '/my_account',
  hasOverriddenOnExit: false,
  factory: $MyAccountRoute._fromState,
);

mixin $MyAccountRoute on GoRouteData {
  static MyAccountRoute _fromState(GoRouterState state) =>
      const MyAccountRoute();

  @override
  String get location => GoRouteData.$location('/my_account');

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
