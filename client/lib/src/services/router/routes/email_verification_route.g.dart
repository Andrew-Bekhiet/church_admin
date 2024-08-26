// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_verification_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $emailVerificationRoute,
    ];

RouteBase get $emailVerificationRoute => GoRouteData.$route(
      path: '/email_verification',
      factory: $EmailVerificationRouteExtension._fromState,
    );

extension $EmailVerificationRouteExtension on EmailVerificationRoute {
  static EmailVerificationRoute _fromState(GoRouterState state) =>
      const EmailVerificationRoute();

  String get location => GoRouteData.$location(
        '/email_verification',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
