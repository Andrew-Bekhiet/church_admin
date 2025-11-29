// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_store_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editStoreRoute];

RouteBase get $editStoreRoute => GoRouteData.$route(
  path: '/edit_store',
  factory: $EditStoreRoute._fromState,
);

mixin $EditStoreRoute on GoRouteData {
  static EditStoreRoute _fromState(GoRouterState state) =>
      EditStoreRoute($extra: state.extra as EditStoreExtra?);

  EditStoreRoute get _self => this as EditStoreRoute;

  @override
  String get location => GoRouteData.$location('/edit_store');

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

EditStoreExtra _$EditStoreExtraFromJson(Map json) => EditStoreExtra(
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  store: json['store'] == null
      ? null
      : Store.fromJson(Map<String, Object?>.from(json['store'] as Map)),
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
);

Map<String, dynamic> _$EditStoreExtraToJson(EditStoreExtra instance) =>
    <String, dynamic>{
      'area': instance.area?.toJson(),
      'street': instance.street?.toJson(),
      'store': instance.store?.toJson(),
      'family': instance.family?.toJson(),
    };
