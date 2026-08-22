// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'edit_user_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editUserRoute];

RouteBase get $editUserRoute =>
    GoRouteData.$route(path: '/edit_user', factory: $EditUserRoute._fromState);

mixin $EditUserRoute on GoRouteData {
  static EditUserRoute _fromState(GoRouterState state) => EditUserRoute(
    uid: state.uri.queryParameters['uid']!,
    $extra: state.extra as User,
  );

  EditUserRoute get _self => this as EditUserRoute;

  @override
  String get location =>
      GoRouteData.$location('/edit_user', queryParams: {'uid': _self.uid});

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
