import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserSettingsService extends BlocObserver {
  static UserSettingsService get I =>
      globalProviderContainer.read(userSettingsServiceProvider);
  final SyncKVStore box;

  UserSettingsService({required this.box});

  bool? get darkTheme => box.get('darkTheme');
  Future<void> setDarkTheme(bool? value) => box.put('darkTheme', value);

  String? get registeredFCMToken => box.get('registeredFCMToken');
  Future<void> setRegisteredFCMToken(String? value) =>
      box.put('registeredFCMToken', value);

  bool get greatFeastTheme => box.get('greatFeastTheme') ?? true;
  Future<void> setGreatFeastTheme(bool value) =>
      box.put('greatFeastTheme', value);

  List<OrderBy>? getLastOrderByForType(QueryableType type) {
    final key = 'lastOrderByFor${type.name}';

    final value = box.get(key);

    if (value == null || value is! List) return null;

    return value.whereType<Map>().map(Json.from).map(OrderBy.fromJson).toList();
  }

  Future<void> setLastOrderByForType(
    QueryableType type,
    List<OrderBy> orderBy,
  ) => box.put(
    'lastOrderByFor${type.name}',
    orderBy.map((o) => o.toJson()).toList(),
  );

  HomeMode? get lastHomeMode {
    final value = box.get('lastHomeMode') as String?;

    return HomeMode.values.firstWhereOrNull((e) => e.name == value);
  }

  Future<void> setLastHomeMode(HomeMode? value) =>
      box.put('lastHomeMode', value?.name);

  Future<void> setupDefaults() async {
    await setGreatFeastTheme(true);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    if (bloc is! AuthBloc || transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final currentState = transition.currentState.unwrapped;
    final nextState = transition.nextState.unwrapped;

    if (currentState is AuthInitial) {
      return;
    }

    if (currentState is! AuthAuthenticated && nextState is AuthAuthenticated) {
      unawaited(setupDefaults());
    }
  }

  Json toJson() => box.toMap().cast<String, dynamic>();
}
