// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_attendance_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$recordAttendanceRoute];

RouteBase get $recordAttendanceRoute => GoRouteData.$route(
  path: '/record_attendance',
  factory: $RecordAttendanceRoute._fromState,
);

mixin $RecordAttendanceRoute on GoRouteData {
  static RecordAttendanceRoute _fromState(GoRouterState state) =>
      RecordAttendanceRoute($extra: state.extra as Meeting);

  RecordAttendanceRoute get _self => this as RecordAttendanceRoute;

  @override
  String get location => GoRouteData.$location('/record_attendance');

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
