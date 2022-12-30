import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserSettingsService {
  static UserSettingsService get I => GetIt.I<UserSettingsService>();

  final Box box;

  UserSettingsService({Box? box})
      : box = box ?? GetIt.I<HiveInterface>().box('Settings') {
    assert(this.box.isOpen);
  }

  bool get darkTheme => box.get(
        'darkTheme',
        defaultValue: WidgetsBinding.instance.window.platformBrightness ==
            Brightness.dark,
      )!;
  Future<void> setDarkTheme(bool? value) => box.put('darkTheme', value);

  String? get registeredFCMToken => box.get('registeredFCMToken');
  Future<void> setRegisteredFCMToken(String? value) =>
      box.put('registeredFCMToken', value);

  bool get greatFeastTheme => box.get('greatFeastTheme', defaultValue: true)!;
  Future<void> setGreatFeastTheme(bool value) =>
      box.put('greatFeastTheme', value);

  String? getSecondLineFor(Type t) =>
      box.get((t.toString().replaceAll(RegExp(r'_|\$'), '')) + 'SecondLine');
  Future<void> setSecondLineFor(Type t, String? value) => box.put(
        (t.toString().replaceAll(RegExp(r'_|\$'), '')) + 'SecondLine',
        value,
      );
}
