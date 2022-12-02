import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'user_settings_service.dart';

class CAThemingService extends ThemingService with WidgetsBindingObserver {
  static CAThemingService get I => GetIt.I<CAThemingService>();

  static const MaterialColor black = MaterialColor(0xFF000000, <int, Color>{
    50: Color(0xFFE0E0E0),
    100: Color(0xFFB3B3B3),
    200: Color(0xFF808080),
    300: Color(0xFF4D4D4D),
    400: Color(0xFF262626),
    500: Color(0xFF000000),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });

  static const MaterialColor blackAccent =
      MaterialColor(0xFF8C8C8C, <int, Color>{
    100: Color(0xFFA6A6A6),
    200: Color(0xFF8C8C8C),
    400: Color(0xFF737373),
    700: Color(0xFF666666),
  });

  static ThemeData getDefault({
    bool? darkTheme,
    bool? greatFeastThemeOverride,
  }) {
    bool isDark = darkTheme ?? GetIt.I<UserSettingsService>().darkTheme;

    final bool greatFeastTheme = greatFeastThemeOverride ??
        GetIt.I<UserSettingsService>().greatFeastTheme;

    MaterialColor primary = Colors.teal;
    Color secondary = Colors.tealAccent;

    final riseDay = getRiseDay();
    if (greatFeastTheme &&
        DateTime.now()
            .isAfter(riseDay.subtract(const Duration(days: 7, seconds: 20))) &&
        DateTime.now().isBefore(riseDay.subtract(const Duration(days: 1)))) {
      primary = black;
      secondary = blackAccent;
      isDark = true;
    } else if (greatFeastTheme &&
        DateTime.now()
            .isBefore(riseDay.add(const Duration(days: 50, seconds: 20))) &&
        DateTime.now().isAfter(riseDay.subtract(const Duration(days: 1)))) {
      isDark = false;
    }

    final themeData = ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primarySwatch: primary,
      colorScheme: ColorScheme.fromSwatch(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primarySwatch: primary,
        accentColor: secondary,
      ).copyWith(
        outline: isDark ? const Color(0xFF938F99) : const Color(0xFF79747E),
      ),
      useMaterial3: true,
    );

    return themeData.copyWith(
      cardTheme: themeData.cardTheme.copyWith(
        clipBehavior: Clip.antiAlias,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: primary),
        ),
      ),
      useMaterial3: true,
    );
    //TODO: tune theming
    /* .copyWith(
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primary),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: isDark ? Brightness.dark : Brightness.light,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        foregroundColor: (isDark
                ? Typography.material2018().white
                : Typography.material2018().black)
            .headline6
            ?.color,
        systemOverlayStyle:
            isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: secondary,
        shape: const CircularNotchedRectangle(),
      ),
    ); */
  }

  factory CAThemingService() =>
      CAThemingService.withInitialThemeata(getDefault());

  CAThemingService.withInitialThemeata(super.initialTheme)
      : super.withInitialThemeata() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    switchTheme(GetIt.I<UserSettingsService>().darkTheme);
  }

  @override
  void switchTheme(bool darkTheme) {
    theme = getDefault(darkTheme: darkTheme);
  }
}
