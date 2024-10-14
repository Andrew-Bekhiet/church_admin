// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unapproved_user_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $unapprovedUserRoute,
    ];

RouteBase get $unapprovedUserRoute => GoRouteData.$route(
      path: '/unapproved_user',
      factory: $UnapprovedUserRouteExtension._fromState,
    );

extension $UnapprovedUserRouteExtension on UnapprovedUserRoute {
  static UnapprovedUserRoute _fromState(GoRouterState state) =>
      const UnapprovedUserRoute();

  String get location => GoRouteData.$location(
        '/unapproved_user',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
