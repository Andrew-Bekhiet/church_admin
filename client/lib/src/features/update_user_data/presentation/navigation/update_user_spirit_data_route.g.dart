// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'update_user_spirit_data_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$updateUserSpiritDataRoute];

RouteBase get $updateUserSpiritDataRoute => GoRouteData.$route(
  path: '/update_user_spirit_data',
  hasOverriddenOnExit: false,
  factory: $UpdateUserSpiritDataRoute._fromState,
);

mixin $UpdateUserSpiritDataRoute on GoRouteData {
  static UpdateUserSpiritDataRoute _fromState(GoRouterState state) =>
      UpdateUserSpiritDataRoute(
        forced:
            _$convertMapValue(
              'forced',
              state.uri.queryParameters,
              _$boolConverter,
            ) ??
            false,
        $extra: state.extra as Person?,
      );

  UpdateUserSpiritDataRoute get _self => this as UpdateUserSpiritDataRoute;

  @override
  String get location => GoRouteData.$location(
    '/update_user_spirit_data',
    queryParams: {if (_self.forced != false) 'forced': _self.forced.toString()},
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

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}
