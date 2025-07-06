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
      factory: _$AuthenticateRoute._fromState,
    );

mixin _$AuthenticateRoute on GoRouteData {
  static AuthenticateRoute _fromState(GoRouterState state) => AuthenticateRoute(
        next: state.uri.queryParameters['next'] ?? '/',
      );

  AuthenticateRoute get _self => this as AuthenticateRoute;

  @override
  String get location => GoRouteData.$location(
        '/authenticate',
        queryParams: {
          if (_self.next != '/') 'next': _self.next,
        },
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
