// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $forgotPasswordRoute,
    ];

RouteBase get $forgotPasswordRoute => GoRouteData.$route(
      path: '/forgot_password',
      factory: _$ForgotPasswordRoute._fromState,
    );

mixin _$ForgotPasswordRoute on GoRouteData {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  @override
  String get location => GoRouteData.$location(
        '/forgot_password',
      );

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
