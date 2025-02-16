import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinycolor2/tinycolor2.dart';

class ThemingService with WidgetsBindingObserver {
  static ThemingService get I =>
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
    required String displayAndHeadline,
    required String titles,
    required String others,
  }) {
    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: base.headlineLarge?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: base.headlineMedium?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: base.headlineSmall?.copyWith(
        fontFamily: displayAndHeadline,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: base.titleLarge?.copyWith(fontFamily: titles),
      titleMedium: base.titleMedium?.copyWith(fontFamily: titles),
      titleSmall: base.titleSmall?.copyWith(fontFamily: titles),
      bodyLarge: base.bodyLarge?.copyWith(fontFamily: titles),
      bodyMedium: base.bodyMedium?.copyWith(fontFamily: others),
      bodySmall: base.bodySmall?.copyWith(fontFamily: others),
      labelLarge: base.labelLarge?.copyWith(fontFamily: others),
      labelMedium: base.labelMedium?.copyWith(fontFamily: others),
      labelSmall: base.labelSmall?.copyWith(fontFamily: others),
    );
  }

  static Typography typographyWith3Fonts(
    Typography base, {
    required String displayAndHeadline,
    required String titles,
    required String others,
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
    Color? seedOverride,
    bool? isDarkOverride,
    bool? greatFeastThemeOverride,
    UserSettingsService? userSettingsService,
  }) {
    late final _userSettingsService =
        userSettingsService ?? UserSettingsService.I;

    bool isDark = isDarkOverride ??
        _userSettingsService.darkTheme ??
        PlatformDispatcher.instance.platformBrightness == Brightness.dark;

    final bool greatFeastTheme =
        greatFeastThemeOverride ?? _userSettingsService.greatFeastTheme;

    Color seed = seedOverride ?? const Color(0xff98651E);
    final scaffoldBackgroundColor = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: isDark ? Brightness.dark : Brightness.light,
    ).surfaceContainerHighest;

    final riseDay = getRiseDay();
    if (greatFeastTheme &&
        DateTime.now()
            .isAfter(riseDay.subtract(const Duration(days: 7, seconds: 20))) &&
        DateTime.now().isBefore(riseDay.subtract(const Duration(days: 1)))) {
      seed = black;
      isDark = true;
    } else if (greatFeastTheme &&
        DateTime.now()
            .isBefore(riseDay.add(const Duration(days: 50, seconds: 20))) &&
        DateTime.now().isAfter(riseDay.subtract(const Duration(days: 1)))) {
      isDark = false;
    }

    final colorScheme = ColorScheme.fromSeed(
      brightness: isDark ? Brightness.dark : Brightness.light,
      seedColor: seed,
      primary: seed,
      primaryContainer: seed.mix(scaffoldBackgroundColor, 36),
      dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
      outline: isDark ? const Color(0xFF938F99) : const Color(0xFF79747E),
      error: const Color(0xffFF4B40),
    );

    final Typography typography = typographyWith3Fonts(
      Typography.material2021(
        platform: defaultTargetPlatform,
        colorScheme: colorScheme,
      ),
      displayAndHeadline: 'Hacen Algeria',
      titles: 'Cairo',
      others: 'Inter',
    );

    final rawThemeData = ThemeData.from(
      textTheme: !isDark ? typography.black : typography.white,
      colorScheme: colorScheme,
      useMaterial3: true,
    );

    final ThemeData themeData = ThemeData.localize(
      rawThemeData,
      rawThemeData.typography.geometryThemeFor(ScriptCategory.tall),
    );

    final inputBorder = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: colorScheme.primaryContainer),
    );

    return themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        foregroundColor: scaffoldBackgroundColor.findInvert(),
      ),
      cardTheme: themeData.cardTheme.copyWith(
        color: colorScheme.primaryContainer,
        clipBehavior: Clip.antiAlias,
      ),
      dialogTheme: themeData.dialogTheme.copyWith(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        backgroundColor: colorScheme.surfaceContainerHighest,
      ),
      inputDecorationTheme: themeData.inputDecorationTheme.copyWith(
        enabledBorder: inputBorder,
        border: inputBorder,
        focusedBorder: inputBorder,
        hintStyle: themeData.textTheme.titleMedium!.copyWith(
          color: colorScheme.outline,
        ),
        floatingLabelStyle: themeData.textTheme.titleMedium!.copyWith(
          color: colorScheme.primaryContainer,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      dividerTheme: themeData.dividerTheme.copyWith(
        thickness: 1,
        space: 0,
        indent: 16,
        endIndent: 16,
        color: colorScheme.secondary.withValues(alpha: 0.54),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomNavigationBarTheme: themeData.bottomNavigationBarTheme.copyWith(
        backgroundColor: colorScheme.primaryContainer,
        selectedItemColor: colorScheme.onPrimaryContainer,
        unselectedItemColor:
            colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
        showUnselectedLabels: false,
      ),
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      bottomAppBarTheme: const BottomAppBarTheme(
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonTheme: themeData.floatingActionButtonTheme
          .copyWith(shape: const CircleBorder()),
    );
  }

  final UserSettingsService _userSettingsService;

  factory ThemingService({
    required UserSettingsService userSettingsService,
  }) =>
      ThemingService.withInitialThemeata(
        userSettingsService: userSettingsService,
        initialTheme: getDefault(userSettingsService: userSettingsService),
      );

  ThemingService.withInitialThemeata({
    required UserSettingsService userSettingsService,
    required ThemeData initialTheme,
  })  : _userSettingsService = userSettingsService,
        _themeData = BehaviorSubject.seeded(initialTheme) {
    WidgetsBinding.instance.addObserver(this);
  }

  final BehaviorSubject<ThemeData> _themeData;

  Stream<ThemeData> get stream => _themeData.share();

  ThemeData get theme => _themeData.value;
  set theme(ThemeData themeData) {
    _themeData.add(themeData);
  }

  @override
  void didChangePlatformBrightness() {
    switchTheme(
      _userSettingsService.darkTheme ??
          PlatformDispatcher.instance.platformBrightness == Brightness.dark,
    );
  }

  void switchTheme(bool darkTheme) {
    theme = getDefault(isDarkOverride: darkTheme);
  }

  Future<void> dispose() async {
    await _themeData.close();
  }
}
