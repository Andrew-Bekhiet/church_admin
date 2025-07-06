// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_web_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenWebRoute,
    ];

RouteBase get $homeScreenWebRoute => GoRouteData.$route(
      path: '/',
      factory: _$HomeScreenWebRoute._fromState,
    );

mixin _$HomeScreenWebRoute on GoRouteData {
  static HomeScreenWebRoute _fromState(GoRouterState state) =>
      const HomeScreenWebRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
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
