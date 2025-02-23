import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinycolor2/tinycolor2.dart';

abstract final class AppColors {
  static const Color primary = Color(0xFFB38A58);
  static const Color secondary = Color(0xFFC7A483);
  static const Color tertiary = Color(0xFFE2CABF);
}

class ThemingService with WidgetsBindingObserver {
  static ThemingService get I =>
      globalProviderContainer.read(themingServiceProvider);

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

    final riseDay = getRiseDay();
    if (greatFeastTheme &&
        DateTime.now()
            .isAfter(riseDay.subtract(const Duration(days: 7, seconds: 20))) &&
        DateTime.now().isBefore(riseDay.subtract(const Duration(days: 1)))) {
      seedOverride = Colors.black;
      isDark = true;
    } else if (greatFeastTheme &&
        DateTime.now()
            .isBefore(riseDay.add(const Duration(days: 50, seconds: 20))) &&
        DateTime.now().isAfter(riseDay.subtract(const Duration(days: 1)))) {
      seedOverride = Colors.white;
      isDark = false;
    }

    final bool isLight = !isDark;

    final flexThemeDataFactory =
        isDark ? FlexThemeData.dark : FlexThemeData.light;

    final flexSchemeColor = seedOverride != null
        ? FlexSchemeColor.from(
            primary: seedOverride,
            tertiary: seedOverride.desaturate(90),
          )
        : FlexSchemeColor.from(
            primary: AppColors.primary,
            secondary: AppColors.secondary,
            tertiary: AppColors.tertiary,
          );

    final rawThemeData = flexThemeDataFactory(
      colors: isLight ? flexSchemeColor : flexSchemeColor.toDark(),
      usedColors: 7,
      surfaceMode: isLight ? FlexSurfaceMode.level : null,
      blendLevel: isLight ? 1 : 0,
      surfaceTint: isLight ? const Color(0xFF98651E) : null,
      subThemesData: FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        scaffoldBackgroundBaseColor: FlexScaffoldBaseColor.surfaceContainer,
        scaffoldBackgroundSchemeColor:
            isLight ? SchemeColor.tertiaryFixed : SchemeColor.onTertiary,
        useM2StyleDividerInM3: true,
        defaultRadius: 10.0,
        switchThumbSchemeColor: SchemeColor.secondaryContainer,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorPrefixIconSchemeColor:
            isLight ? SchemeColor.primary : null,
        inputDecoratorSuffixIconSchemeColor:
            isLight ? SchemeColor.primary : null,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabForegroundSchemeColor: SchemeColor.onPrimary,
        chipSchemeColor: SchemeColor.transparent,
        chipSelectedSchemeColor: SchemeColor.primary,
        chipSecondarySelectedSchemeColor: SchemeColor.primary,
        chipIconSize: 22,
        chipRadius: 5.0,
        alignedDropdown: true,
        dialogBackgroundSchemeColor:
            isLight ? SchemeColor.secondaryContainer : null,
        appBarBackgroundSchemeColor: isLight ? SchemeColor.tertiary : null,
        useInputDecoratorThemeInDialogs: true,
        bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
        bottomNavigationBarMutedUnselectedLabel: true,
        bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        bottomNavigationBarMutedUnselectedIcon: true,
        bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
        bottomNavigationBarShowUnselectedLabels: false,
        menuRadius: 10.0,
        navigationRailUseIndicator: true,
        navigationRailLabelType: NavigationRailLabelType.all,
      ),
      keyColors: FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
        useError: true,
        keepPrimary: isLight,
        keepSecondary: isLight,
        keepTertiary: isLight,
      ),
      variant: FlexSchemeVariant.fidelity,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    );

    final colorScheme = rawThemeData.colorScheme;

    final Typography typography = typographyWith3Fonts(
      Typography.material2021(
        platform: defaultTargetPlatform,
        colorScheme: colorScheme,
      ),
      displayAndHeadline: 'Hacen Algeria',
      titles: 'Cairo',
      others: 'Inter',
    );

    final ThemeData themeData = ThemeData.localize(
      rawThemeData.copyWith(
        textTheme: isLight ? typography.black : typography.white,
        typography: typography,
      ),
      typography.geometryThemeFor(ScriptCategory.tall),
    );

    final scaffoldBackgroundColor = themeData.scaffoldBackgroundColor;

    return themeData.copyWith(
      filledButtonTheme: FilledButtonThemeData(
        style: themeData.filledButtonTheme.style!.copyWith(
          textStyle: WidgetStateProperty.all(themeData.textTheme.titleMedium),
        ),
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        foregroundColor: scaffoldBackgroundColor.findInvert(),
      ),
      cardTheme: themeData.cardTheme.copyWith(
        color: colorScheme.primaryContainer,
        clipBehavior: Clip.antiAlias,
      ),
      inputDecorationTheme: themeData.inputDecorationTheme.copyWith(
        suffixIconColor: colorScheme.primaryContainer,
        prefixIconColor: colorScheme.primaryContainer,
      ),
      dividerTheme: themeData.dividerTheme.copyWith(
        thickness: 1,
        space: 0,
        indent: 16,
        endIndent: 16,
        color: colorScheme.secondary.withValues(alpha: 0.54),
      ),
      chipTheme: themeData.chipTheme.copyWith(
        color: WidgetStateProperty.resolveWith(
          (states) => states.contains(
            WidgetState.selected,
          )
              ? themeData.colorScheme.primary
              : themeData.scaffoldBackgroundColor,
        ),
        labelStyle: themeData.textTheme.titleMedium,
        secondaryLabelStyle: themeData.textTheme.titleMedium!.copyWith(
          color: colorScheme.onPrimary,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
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

extension ChurchAdminTheming on ThemeData {
  /// Workaround for flutter issue [#118063](https://github.com/flutter/flutter/issues/118063)
  ButtonStyle? get filledTonalButtonStyleWorkaround =>
      brightness == Brightness.light
          ? filledButtonTheme.style?.copyWith(
              backgroundColor:
                  WidgetStateProperty.all(colorScheme.primaryFixed),
            )
          : filledButtonTheme.style;

  ButtonStyle get largeFilledButtonStyle => filledButtonTheme.style!.copyWith(
        textStyle: WidgetStateProperty.all(textTheme.titleLarge),
      );
}
