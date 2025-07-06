// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_user_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $viewUserRoute,
    ];

RouteBase get $viewUserRoute => GoRouteData.$route(
      path: '/view_user',
      factory: _$ViewUserRoute._fromState,
    );

mixin _$ViewUserRoute on GoRouteData {
  static ViewUserRoute _fromState(GoRouterState state) => ViewUserRoute(
        uid: state.uri.queryParameters['uid']!,
        $extra: state.extra as User?,
      );

  ViewUserRoute get _self => this as ViewUserRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_user',
        queryParams: {
          'uid': _self.uid,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
