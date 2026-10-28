import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

enum ThemeChoice {
  dark,
  light,
  system;

  static ThemeChoice fromStoredDarkTheme(bool? darkTheme) =>
      switch (darkTheme) {
        true => dark,
        false => light,
        null => system,
      };

  bool? get storedDarkTheme => switch (this) {
    dark => true,
    light => false,
    system => null,
  };

  bool isDarkUnder(Brightness platformBrightness) => switch (this) {
    dark => true,
    light => false,
    system => platformBrightness == Brightness.dark,
  };
}

class StoredDarkThemeConverter implements JsonConverter<ThemeChoice, bool?> {
  const StoredDarkThemeConverter();

  @override
  ThemeChoice fromJson(bool? json) => ThemeChoice.fromStoredDarkTheme(json);

  @override
  bool? toJson(ThemeChoice object) => object.storedDarkTheme;
}
