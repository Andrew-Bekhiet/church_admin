import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const storedDarkThemes = <ThemeChoice, bool?>{
    ThemeChoice.dark: true,
    ThemeChoice.light: false,
    ThemeChoice.system: null,
  };

  for (final MapEntry(key: themeChoice, value: storedDarkTheme)
      in storedDarkThemes.entries) {
    group('$themeChoice', () {
      test('is read from the stored dark theme $storedDarkTheme', () {
        expect(ThemeChoice.fromStoredDarkTheme(storedDarkTheme), themeChoice);
      });

      test('is stored as the dark theme $storedDarkTheme', () {
        expect(themeChoice.storedDarkTheme, storedDarkTheme);
      });

      test('survives a round trip through the preferences json', () {
        final preferences = UserPreferences(
          uid: 'uid',
          themeChoice: themeChoice,
        );

        expect(preferences.toJson()['darkTheme'], storedDarkTheme);
        expect(
          UserPreferences.fromJson(preferences.toJson()).themeChoice,
          themeChoice,
        );
      });
    });
  }

  test('preferences saved without any dark theme load as system', () {
    expect(
      UserPreferences.fromJson({'uid': 'uid'}).themeChoice,
      ThemeChoice.system,
    );
  });

  test('the system choice follows the platform brightness', () {
    expect(ThemeChoice.system.isDarkUnder(Brightness.dark), isTrue);
    expect(ThemeChoice.system.isDarkUnder(Brightness.light), isFalse);
    expect(ThemeChoice.dark.isDarkUnder(Brightness.light), isTrue);
    expect(ThemeChoice.light.isDarkUnder(Brightness.dark), isFalse);
  });
}
