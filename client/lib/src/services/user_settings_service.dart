import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserSettings {
  late final box = GetIt.I<HiveInterface>().box('Settings');

  UserSettings() {
    _openSettingsBox();
  }

  Future<void> _openSettingsBox() async {
    await GetIt.I<HiveInterface>().openBox('Settings');
    GetIt.I.signalReady(this);
  }

  bool get darkTheme => box.get(
        'darkTheme',
        defaultValue: WidgetsBinding.instance.window.platformBrightness ==
            Brightness.dark,
      )!;
  Future<void> setDarkTheme(bool? value) => box.put('darkTheme', value);

  bool get greatFeastTheme => box.get('greatFeastTheme', defaultValue: true)!;
  Future<void> setGreatFeastTheme(bool value) =>
      box.put('greatFeastTheme', value);

  String? getSecondLineFor(Type t) =>
      box.get((t.toString().replaceAll(RegExp(r'_|\$'), '')) + 'SecondLine');
  Future<void> setSecondLineFor(Type t, String? value) => box.put(
      (t.toString().replaceAll(RegExp(r'_|\$'), '')) + 'SecondLine', value);
}
