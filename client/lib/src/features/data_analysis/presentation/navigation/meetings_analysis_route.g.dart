// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'meetings_analysis_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$meetingsAnalysisRoute];

RouteBase get $meetingsAnalysisRoute => GoRouteData.$route(
  path: '/meetings_analysis',
  hasOverriddenOnExit: false,
  factory: $MeetingsAnalysisRoute._fromState,
);

mixin $MeetingsAnalysisRoute on GoRouteData {
  static MeetingsAnalysisRoute _fromState(GoRouterState state) =>
      MeetingsAnalysisRoute($extra: state.extra as MeetingsAnalysisExtra);

  MeetingsAnalysisRoute get _self => this as MeetingsAnalysisRoute;

  @override
  String get location => GoRouteData.$location('/meetings_analysis');

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
