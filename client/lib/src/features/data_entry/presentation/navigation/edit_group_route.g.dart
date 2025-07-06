// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $editGroupRoute,
    ];

RouteBase get $editGroupRoute => GoRouteData.$route(
      path: '/edit_group',
      factory: _$EditGroupRoute._fromState,
    );

mixin _$EditGroupRoute on GoRouteData {
  static EditGroupRoute _fromState(GoRouterState state) => EditGroupRoute(
        $extra: state.extra as EditGroupExtra?,
      );

  EditGroupRoute get _self => this as EditGroupRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_group',
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

EditGroupExtra _$EditGroupExtraFromJson(Map json) => EditGroupExtra(
      group: json['group'] == null
          ? null
          : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
    );

Map<String, dynamic> _$EditGroupExtraToJson(EditGroupExtra instance) =>
    <String, dynamic>{
      'group': instance.group?.toJson(),
      'service': instance.service?.toJson(),
    };
