// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_class_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $editClassRoute,
    ];

RouteBase get $editClassRoute => GoRouteData.$route(
      path: '/edit_class',
      factory: _$EditClassRoute._fromState,
    );

mixin _$EditClassRoute on GoRouteData {
  static EditClassRoute _fromState(GoRouterState state) => EditClassRoute(
        $extra: state.extra as EditClassExtra?,
      );

  EditClassRoute get _self => this as EditClassRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_class',
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

EditClassExtra _$EditClassExtraFromJson(Map json) => EditClassExtra(
      $class: json[r'$class'] == null
          ? null
          : Class.fromJson(Map<String, Object?>.from(json[r'$class'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
    );

Map<String, dynamic> _$EditClassExtraToJson(EditClassExtra instance) =>
    <String, dynamic>{
      r'$class': instance.$class?.toJson(),
      'service': instance.service?.toJson(),
    };
