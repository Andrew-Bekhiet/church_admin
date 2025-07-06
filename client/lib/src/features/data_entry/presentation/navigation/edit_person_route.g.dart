// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_person_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $editPersonRoute,
    ];

RouteBase get $editPersonRoute => GoRouteData.$route(
      path: '/edit_person',
      factory: _$EditPersonRoute._fromState,
    );

mixin _$EditPersonRoute on GoRouteData {
  static EditPersonRoute _fromState(GoRouterState state) => EditPersonRoute(
        $extra: state.extra as EditPersonExtra?,
      );

  EditPersonRoute get _self => this as EditPersonRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_person',
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

EditPersonExtra _$EditPersonExtraFromJson(Map json) => EditPersonExtra(
      person: json['person'] == null
          ? null
          : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      group: json['group'] == null
          ? null
          : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
      gender: json['gender'] as bool?,
    );

Map<String, dynamic> _$EditPersonExtraToJson(EditPersonExtra instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'family': instance.family?.toJson(),
      'service': instance.service?.toJson(),
      'group': instance.group?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
      'gender': instance.gender,
    };
