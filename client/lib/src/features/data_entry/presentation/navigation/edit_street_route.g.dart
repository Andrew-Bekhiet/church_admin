// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_street_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editStreetRoute];

RouteBase get $editStreetRoute => GoRouteData.$route(
  path: '/edit_street',
  factory: $EditStreetRoute._fromState,
);

mixin $EditStreetRoute on GoRouteData {
  static EditStreetRoute _fromState(GoRouterState state) =>
      EditStreetRoute($extra: state.extra as EditStreetExtra?);

  EditStreetRoute get _self => this as EditStreetRoute;

  @override
  String get location => GoRouteData.$location('/edit_street');

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

EditStreetExtra _$EditStreetExtraFromJson(Map json) => EditStreetExtra(
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
);

Map<String, dynamic> _$EditStreetExtraToJson(EditStreetExtra instance) =>
    <String, dynamic>{
      'street': instance.street?.toJson(),
      'area': instance.area?.toJson(),
    };
