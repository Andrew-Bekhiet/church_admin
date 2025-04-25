import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserSettingsService extends BlocObserver {
  static UserSettingsService get I =>
      globalProviderContainer.read(userSettingsServiceProvider);
  final Box box;

  UserSettingsService({required this.box}) : assert(box.isOpen);

  bool? get darkTheme => box.get('darkTheme');
  Future<void> setDarkTheme(bool? value) => box.put('darkTheme', value);

  String? get registeredFCMToken => box.get('registeredFCMToken');
  Future<void> setRegisteredFCMToken(String? value) =>
      box.put('registeredFCMToken', value);

  bool get greatFeastTheme => box.get('greatFeastTheme', defaultValue: true)!;
  Future<void> setGreatFeastTheme(bool value) =>
      box.put('greatFeastTheme', value);

  String? getSecondLineFor<T>([Type? type]) =>
      box.get('${_getTypeName(type ?? T)}SecondLine');
  Future<void> setSecondLineFor<T>({required String? value, Type? type}) =>
      box.put('${_getTypeName(type ?? T)}SecondLine', value);

  String _getTypeName(Type t) =>
      AdvancedQueriesMetadata.queryableTypes[t]?.name ??
      (t.toString().replaceAll(RegExp(r'_|\$|(Impl)'), ''));

  Future<void> setupDefaults() async {
    await Future.wait([
      setGreatFeastTheme(true),
      setSecondLineFor(type: Area, value: null),
      setSecondLineFor(type: Street, value: null),
      setSecondLineFor(type: Family, value: null),
      setSecondLineFor(type: Person, value: 'birthdate'),
      setSecondLineFor(type: User, value: 'permissions'),
    ]);
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
      setupDefaults();
    }
  }
}
