import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CAThemingService extends ThemingService with WidgetsBindingObserver {
  static CAThemingService get I =>
      globalProviderContainer.read(themingServiceProvider);

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

  static TextTheme textThemeWith3Fonts(
    TextTheme base, {
    String? displayAndHeadline,
    String? titles,
    String? others,
  }) {
    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      headlineLarge: base.headlineLarge?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      headlineMedium: base.headlineMedium?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      headlineSmall: base.headlineSmall?.copyWith(
        fontFamily: displayAndHeadline ?? 'Cairo',
      ),
      titleLarge: base.titleLarge?.copyWith(
        fontFamily: titles ?? 'Changa',
      ),
      titleMedium: base.titleMedium?.copyWith(
        fontFamily: titles ?? 'Changa',
      ),
      titleSmall: base.titleSmall?.copyWith(
        fontFamily: titles ?? 'Changa',
      ),
      bodyLarge: base.bodyLarge?.copyWith(
        fontFamily: titles ?? 'Roboto',
      ),
      bodyMedium: base.bodyMedium?.copyWith(
        fontFamily: titles ?? 'Roboto',
      ),
      bodySmall: base.bodySmall?.copyWith(
        fontFamily: others ?? 'Roboto',
      ),
      labelLarge: base.labelLarge?.copyWith(
        fontFamily: others ?? 'Roboto',
      ),
      labelMedium: base.labelMedium?.copyWith(
        fontFamily: others ?? 'Roboto',
      ),
      labelSmall: base.labelSmall?.copyWith(
        fontFamily: others ?? 'Roboto',
      ),
    );
  }

  static Typography typographyWith3Fonts(
    Typography base, {
    String? displayAndHeadline,
    String? titles,
    String? others,
  }) {
    return Typography(
      englishLike: textThemeWith3Fonts(
        base.englishLike,
        displayAndHeadline: displayAndHeadline,
        titles: titles,
        others: others,
      ),
      dense: textThemeWith3Fonts(
        base.dense,
        displayAndHeadline: displayAndHeadline,
        titles: titles,
        others: others,
      ),
      tall: textThemeWith3Fonts(
        base.tall,
        displayAndHeadline: displayAndHeadline,
        titles: titles,
        others: others,
      ),
      white: textThemeWith3Fonts(
        base.white,
        displayAndHeadline: displayAndHeadline,
        titles: titles,
        others: others,
      ),
      black: textThemeWith3Fonts(
        base.black,
        displayAndHeadline: displayAndHeadline,
        titles: titles,
        others: others,
      ),
    );
  }

  static ThemeData getDefault({
    Color? primaryOverride,
    bool? darkTheme,
    bool? greatFeastThemeOverride,
    UserSettingsService? userSettingsService,
  }) {
    late final _userSettingsService =
        userSettingsService ?? UserSettingsService.I;

    bool isDark = darkTheme ?? _userSettingsService.darkTheme;

    final bool greatFeastTheme =
        greatFeastThemeOverride ?? _userSettingsService.greatFeastTheme;

    MaterialColor primary =
        (primaryOverride is! MaterialColor && primaryOverride != null
                ? MaterialColor(
                    primaryOverride.value,
                    {
                      50: primaryOverride,
                      100: primaryOverride,
                      200: primaryOverride,
                      300: primaryOverride,
                      400: primaryOverride,
                      500: primaryOverride,
                      600: primaryOverride,
                      700: primaryOverride,
                      800: primaryOverride,
                      900: primaryOverride,
                    },
                  )
                : null) ??
            Colors.teal;

    final riseDay = getRiseDay();
    if (greatFeastTheme &&
        DateTime.now()
            .isAfter(riseDay.subtract(const Duration(days: 7, seconds: 20))) &&
        DateTime.now().isBefore(riseDay.subtract(const Duration(days: 1)))) {
      primary = black;
      isDark = true;
    } else if (greatFeastTheme &&
        DateTime.now()
            .isBefore(riseDay.add(const Duration(days: 50, seconds: 20))) &&
        DateTime.now().isAfter(riseDay.subtract(const Duration(days: 1)))) {
      isDark = false;
    }

    final colorScheme = ColorScheme.fromSeed(
      brightness: isDark ? Brightness.dark : Brightness.light,
      seedColor: primary,
      outline: isDark ? const Color(0xFF938F99) : const Color(0xFF79747E),
    );

    final themeData = ThemeData(
      typography: typographyWith3Fonts(
        Typography.material2021(
          platform: defaultTargetPlatform,
          colorScheme: colorScheme,
        ),
        displayAndHeadline: 'Cairo',
        titles: 'Changa',
        others: 'Roboto',
      ),
      brightness: isDark ? Brightness.dark : Brightness.light,
      primarySwatch: primary,
      colorScheme: colorScheme,
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
                ? Typography.material2021().white
                : Typography.material2021().black)
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

  final UserSettingsService _userSettingsService;

  factory CAThemingService({
    required UserSettingsService userSettingsService,
  }) =>
      CAThemingService.withInitialThemeata(
        userSettingsService: userSettingsService,
        initialTheme: getDefault(userSettingsService: userSettingsService),
      );

  CAThemingService.withInitialThemeata({
    required UserSettingsService userSettingsService,
    required ThemeData initialTheme,
  })  : _userSettingsService = userSettingsService,
        super.withInitialThemeata(initialTheme) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    switchTheme(_userSettingsService.darkTheme);
  }

  @override
  void switchTheme(bool darkTheme) {
    theme = getDefault(darkTheme: darkTheme);
  }
}
