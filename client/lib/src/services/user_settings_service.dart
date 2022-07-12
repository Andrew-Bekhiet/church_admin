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

  String? get areaSecondLine => box.get('areaSecondLine');
  Future<void> setAreaSecondLine(String? value) =>
      box.put('areaSecondLine', value);

  String? get groupSecondLine => box.get('groupSecondLine');
  Future<void> setGroupSecondLine(String? value) =>
      box.put('groupSecondLine', value);

  String? get serviceSecondLine => box.get('serviceSecondLine');
  Future<void> setServiceSecondLine(String? value) =>
      box.put('serviceSecondLine', value);

  String? get streetSecondLine => box.get('streetSecondLine');
  Future<void> setStreetSecondLine(String? value) =>
      box.put('streetSecondLine', value);

  String? get familySecondLine => box.get('familySecondLine');
  Future<void> setFamilySecondLine(String? value) =>
      box.put('familySecondLine', value);

  String? get personSecondLine => box.get('personSecondLine');
  Future<void> setPersonSecondLine(String? value) =>
      box.put('personSecondLine', value);
}
