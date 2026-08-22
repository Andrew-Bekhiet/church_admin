// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'user_analysis_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$userAnalysisRoute];

RouteBase get $userAnalysisRoute => GoRouteData.$route(
  path: '/user_analysis',
  factory: $UserAnalysisRoute._fromState,
);

mixin $UserAnalysisRoute on GoRouteData {
  static UserAnalysisRoute _fromState(GoRouterState state) =>
      UserAnalysisRoute($extra: state.extra as UserAnalysisExtra);

  UserAnalysisRoute get _self => this as UserAnalysisRoute;

  @override
  String get location => GoRouteData.$location('/user_analysis');

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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAnalysisExtra _$UserAnalysisExtraFromJson(Map json) => UserAnalysisExtra(
  user: User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
);

Map<String, dynamic> _$UserAnalysisExtraToJson(UserAnalysisExtra instance) =>
    <String, dynamic>{'user': instance.user.toJson()};
