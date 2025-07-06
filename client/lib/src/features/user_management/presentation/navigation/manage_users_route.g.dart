// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_users_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $manageUsersRoute,
    ];

RouteBase get $manageUsersRoute => GoRouteData.$route(
      path: '/manage_users',
      factory: _$ManageUsersRoute._fromState,
    );

mixin _$ManageUsersRoute on GoRouteData {
  static ManageUsersRoute _fromState(GoRouterState state) =>
      const ManageUsersRoute();

  @override
  String get location => GoRouteData.$location(
        '/manage_users',
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
