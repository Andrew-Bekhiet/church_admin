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
      factory: $HomeScreenWebRouteExtension._fromState,
    );

extension $HomeScreenWebRouteExtension on HomeScreenWebRoute {
  static HomeScreenWebRoute _fromState(GoRouterState state) =>
      const HomeScreenWebRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
