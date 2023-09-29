import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserSettingsService {
  static UserSettingsService get I =>
      globalProviderContainer.read(userSettingsServiceProvider);

  final Box box;

  UserSettingsService({required this.box}) {
    assert(box.isOpen);
  }

  bool? get darkTheme => box.get('darkTheme');
  Future<void> setDarkTheme(bool? value) => box.put('darkTheme', value);

  String? get registeredFCMToken => box.get('registeredFCMToken');
  Future<void> setRegisteredFCMToken(String? value) =>
      box.put('registeredFCMToken', value);

  bool get greatFeastTheme => box.get('greatFeastTheme', defaultValue: true)!;
  Future<void> setGreatFeastTheme(bool value) =>
      box.put('greatFeastTheme', value);

  String? getSecondLineFor(Type t) =>
      box.get(AdvancedQueriesMetadata.queryableTypes[t]!.$2 + 'SecondLine');
  Future<void> setSecondLineFor(Type t, String? value) => box.put(
        AdvancedQueriesMetadata.queryableTypes[t]!.$2 + 'SecondLine',
        value,
      );

  Future<void> setupDefaults() async {
    await setGreatFeastTheme(true);
    await setSecondLineFor(Area, 'lastVisit');
    await setSecondLineFor(Street, 'lastVisit');
    await setSecondLineFor(Family, 'lastVisit');
    await setSecondLineFor(Person, 'birthdate');
    await setSecondLineFor(User, 'permissions');
  }
}
