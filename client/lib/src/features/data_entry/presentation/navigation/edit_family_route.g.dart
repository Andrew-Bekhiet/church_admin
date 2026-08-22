// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_family_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editFamilyRoute];

RouteBase get $editFamilyRoute => GoRouteData.$route(
  path: '/edit_family',
  factory: $EditFamilyRoute._fromState,
);

mixin $EditFamilyRoute on GoRouteData {
  static EditFamilyRoute _fromState(GoRouterState state) =>
      EditFamilyRoute($extra: state.extra as EditFamilyExtra?);

  EditFamilyRoute get _self => this as EditFamilyRoute;

  @override
  String get location => GoRouteData.$location('/edit_family');

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

EditFamilyExtra _$EditFamilyExtraFromJson(Map json) => EditFamilyExtra(
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
      .toSet(),
  parents: (json['parents'] as List<dynamic>?)
      ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
      .toSet(),
);

Map<String, dynamic> _$EditFamilyExtraToJson(EditFamilyExtra instance) =>
    <String, dynamic>{
      'family': instance.family?.toJson(),
      'street': instance.street?.toJson(),
      'area': instance.area?.toJson(),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'parents': instance.parents?.map((e) => e.toJson()).toList(),
    };
