// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $authenticateRoute,
    ];

RouteBase get $authenticateRoute => GoRouteData.$route(
      path: '/authenticate',
      factory: $AuthenticateRouteExtension._fromState,
    );

extension $AuthenticateRouteExtension on AuthenticateRoute {
  static AuthenticateRoute _fromState(GoRouterState state) => AuthenticateRoute(
        next: state.uri.queryParameters['next'] ?? '/',
      );

  String get location => GoRouteData.$location(
        '/authenticate',
        queryParams: {
          if (next != '/') 'next': next,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
