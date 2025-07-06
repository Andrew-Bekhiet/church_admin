// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_analysis_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $personAnalysisRoute,
    ];

RouteBase get $personAnalysisRoute => GoRouteData.$route(
      path: '/person_analysis',
      factory: _$PersonAnalysisRoute._fromState,
    );

mixin _$PersonAnalysisRoute on GoRouteData {
  static PersonAnalysisRoute _fromState(GoRouterState state) =>
      PersonAnalysisRoute(
        $extra: state.extra as PersonAnalysisExtra,
      );

  PersonAnalysisRoute get _self => this as PersonAnalysisRoute;

  @override
  String get location => GoRouteData.$location(
        '/person_analysis',
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonAnalysisExtra _$PersonAnalysisExtraFromJson(Map json) =>
    PersonAnalysisExtra(
      editOptionsBuilder: PersonAnalysisExtra._editOptionsBuilderFromJson(
          (json['editOptionsBuilder'] as num).toInt()),
      person: json['person'] == null
          ? null
          : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      options: json['options'] == null
          ? null
          : PersonAnalysisOptions.fromJson(
              Map<String, dynamic>.from(json['options'] as Map)),
    );

Map<String, dynamic> _$PersonAnalysisExtraToJson(
        PersonAnalysisExtra instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'user': instance.user?.toJson(),
      'options': instance.options?.toJson(),
      'editOptionsBuilder': PersonAnalysisExtra._editOptionsBuilderToJson(
          instance.editOptionsBuilder),
    };
