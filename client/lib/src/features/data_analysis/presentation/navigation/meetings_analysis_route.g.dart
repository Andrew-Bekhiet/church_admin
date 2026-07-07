// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetings_analysis_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$meetingsAnalysisRoute];

RouteBase get $meetingsAnalysisRoute => GoRouteData.$route(
  path: '/meetings_analysis',
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingsAnalysisExtra _$MeetingsAnalysisExtraFromJson(Map json) =>
    MeetingsAnalysisExtra(
      title: json['title'] as String,
      initialRangePreset: MeetingsAnalysisExtra._dateRangePresetFromString(
        json['initialRangePreset'] as String,
      ),
      load: MeetingsAnalysisExtra._loadFromJson((json['load'] as num).toInt()),
    );

Map<String, dynamic> _$MeetingsAnalysisExtraToJson(
  MeetingsAnalysisExtra instance,
) => <String, dynamic>{
  'title': instance.title,
  'initialRangePreset': MeetingsAnalysisExtra._dateRangePresetToString(
    instance.initialRangePreset,
  ),
  'load': MeetingsAnalysisExtra._loadToJson(instance.load),
};
