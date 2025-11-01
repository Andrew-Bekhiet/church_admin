import 'dart:async';

import 'package:church_admin/church_admin.dart';
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
      setupDefaults();
    }
  }

  Json toJson() => box.toMap().cast<String, dynamic>();
}
