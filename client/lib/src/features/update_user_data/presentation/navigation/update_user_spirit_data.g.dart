// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_spirit_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $updateUserSpiritDataRoute,
    ];

RouteBase get $updateUserSpiritDataRoute => GoRouteData.$route(
      path: '/update_user_spirit_data',
      factory: $UpdateUserSpiritDataRouteExtension._fromState,
    );

extension $UpdateUserSpiritDataRouteExtension on UpdateUserSpiritDataRoute {
  static UpdateUserSpiritDataRoute _fromState(GoRouterState state) =>
      UpdateUserSpiritDataRoute(
        forced: _$convertMapValue(
                'forced', state.uri.queryParameters, _$boolConverter) ??
            false,
        $extra: state.extra as Person?,
      );

  String get location => GoRouteData.$location(
        '/update_user_spirit_data',
        queryParams: {
          if (forced != false) 'forced': forced.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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
