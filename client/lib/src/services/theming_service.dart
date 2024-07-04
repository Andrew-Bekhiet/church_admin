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
    Color? seedOverride,
    Color? whiteOrBlackOverride,
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

    Color seed = seedOverride ?? Colors.indigo;
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

    final ColorScheme colorScheme = ColorScheme.fromSeed(
      brightness: isDark ? Brightness.dark : Brightness.light,
      seedColor: seed,
      outline: isDark ? const Color(0xFF938F99) : const Color(0xFF79747E),
      error: const Color(0xffFF4B40),
    );

    final Color whiteOrBlack =
        whiteOrBlackOverride ?? (isDark ? Colors.white : Colors.black);
    final Color onSeed = seed.findInvert();

    final Typography typography = typographyWith3Fonts(
      Typography.material2021(
        platform: defaultTargetPlatform,
        colorScheme: colorScheme,
      ),
      displayAndHeadline: 'Cairo',
      titles: 'Changa',
      others: 'Roboto',
    );

    final ThemeData rawThemeData = ThemeData.from(
      textTheme: isDark ? typography.white : typography.black,
      colorScheme: colorScheme,
      useMaterial3: true,
    );

    final ThemeData themeData = ThemeData.localize(
      rawThemeData,
      rawThemeData.typography.geometryThemeFor(ScriptCategory.tall),
    );

    const radius15 = Radius.circular(15);
    final inputBorder = OutlineInputBorder(
      gapPadding: 8,
      borderRadius: const BorderRadius.only(
        topLeft: radius15,
        topRight: Radius.circular(2),
        bottomLeft: radius15,
        bottomRight: radius15,
      ),
      borderSide: BorderSide(color: whiteOrBlack),
    );

    return themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        foregroundColor: onSeed,
        backgroundColor: seed,
      ),
      hintColor: whiteOrBlack.withOpacity(0.5),
      dialogTheme: themeData.dialogTheme.copyWith(
        backgroundColor: const Color(0xff1A477C),
        elevation: 5,
        surfaceTintColor: const Color(0xffD9D9D9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        ),
        titleTextStyle: themeData.textTheme.bodyLarge!.copyWith(
          color: onSeed,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
      listTileTheme: themeData.listTileTheme.copyWith(
        titleTextStyle: themeData.textTheme.bodyLarge!
            .copyWith(fontWeight: FontWeight.bold),
        iconColor: whiteOrBlack,
        textColor: whiteOrBlack,
      ),
      progressIndicatorTheme: themeData.progressIndicatorTheme.copyWith(
        color: whiteOrBlack,
      ),
      expansionTileTheme: themeData.expansionTileTheme.copyWith(
        collapsedIconColor: whiteOrBlack,
        collapsedTextColor: whiteOrBlack,
        iconColor: whiteOrBlack.mix(seed, 20),
        textColor: whiteOrBlack.mix(seed, 20),
      ),
      cardTheme: themeData.cardTheme.copyWith(
        clipBehavior: Clip.antiAlias,
        color: seed,
      ),
      tabBarTheme: themeData.tabBarTheme.copyWith(
        labelColor: whiteOrBlack,
        unselectedLabelColor: whiteOrBlack.withOpacity(0.3),
        indicatorColor: whiteOrBlack,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: themeData.textTheme.bodyLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        activeIndicatorBorder: inputBorder.borderSide,
        outlineBorder: inputBorder.borderSide,
        prefixIconColor: whiteOrBlack,
        suffixIconColor: whiteOrBlack,
        labelStyle:
            themeData.textTheme.titleMedium?.copyWith(color: whiteOrBlack),
        iconColor: whiteOrBlack,
      ),
      iconTheme: themeData.iconTheme.copyWith(
        color: whiteOrBlack,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          focusColor: onSeed,
          foregroundColor: onSeed,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: onSeed,
          backgroundColor: seed,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: whiteOrBlack),
          disabledForegroundColor: whiteOrBlack.withOpacity(0.5),
          disabledIconColor: whiteOrBlack.withOpacity(0.5),
          iconColor: onSeed,
          foregroundColor: onSeed,
          backgroundColor: seed,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: onSeed,
          backgroundColor: seed,
        ),
      ),
      checkboxTheme: themeData.checkboxTheme.copyWith(
        side: BorderSide(color: whiteOrBlack, width: 2),
        checkColor: WidgetStatePropertyAll(whiteOrBlack),
      ),
      radioTheme: themeData.radioTheme.copyWith(
        fillColor: WidgetStatePropertyAll(whiteOrBlack),
        overlayColor: WidgetStatePropertyAll(whiteOrBlack.withOpacity(0.5)),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomNavigationBarTheme: themeData.bottomNavigationBarTheme.copyWith(
        backgroundColor: seed,
        showUnselectedLabels: false,
        unselectedItemColor: onSeed.withOpacity(0.3),
        selectedItemColor: onSeed,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        shape: CircularNotchedRectangle(),
      ),
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
