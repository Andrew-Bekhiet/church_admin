// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'email_verification_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$emailVerificationRoute];

RouteBase get $emailVerificationRoute => GoRouteData.$route(
  path: '/email_verification',
  hasOverriddenOnExit: false,
  factory: $EmailVerificationRoute._fromState,
);

mixin $EmailVerificationRoute on GoRouteData {
  static EmailVerificationRoute _fromState(GoRouterState state) =>
      const EmailVerificationRoute();

  @override
  String get location => GoRouteData.$location('/email_verification');

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
