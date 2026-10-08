import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinycolor2/tinycolor2.dart';

class ThemingService with WidgetsBindingObserver {
  static ThemingService get I =>
      globalProviderContainer.read(themingServiceProvider);

  static ThemeData getDefault({
    Color? seedOverride,
    bool? isDarkOverride,
    bool? greatFeastThemeOverride,
    UserPreferencesService? userPreferencesService,
  }) {
    late final effectiveUserPreferencesService =
        userPreferencesService ?? UserPreferencesService.I;

    bool isDark =
        isDarkOverride ??
        effectiveUserPreferencesService.darkTheme ??
        PlatformDispatcher.instance.platformBrightness == Brightness.dark;

    final bool greatFeastTheme =
        greatFeastThemeOverride ??
        effectiveUserPreferencesService.greatFeastTheme;

    Color? effectiveSeedOverride = seedOverride;

    bool isUsingGreatFeastTheme = false;

    if (greatFeastTheme) {
      switch (LiturgySeason.current) {
        case LiturgySeason.holyWeek:
          effectiveSeedOverride = Colors.black;
          isDark = true;
          isUsingGreatFeastTheme = true;

        case LiturgySeason.pentecost:
          effectiveSeedOverride = Colors.white;
          isDark = false;
          isUsingGreatFeastTheme = true;

        case _:
      }
    }

    final bool isLight = !isDark;

    final flexThemeDataFactory = isDark
        ? FlexThemeData.dark
        : FlexThemeData.light;

    final flexSchemeColor = effectiveSeedOverride != null
        ? FlexSchemeColor.from(
            primary: effectiveSeedOverride,
            tertiary: effectiveSeedOverride.desaturate(90),
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
        scaffoldBackgroundSchemeColor: isLight
            ? SchemeColor.tertiaryFixed
            : SchemeColor.onTertiary,
        useM2StyleDividerInM3: true,
        defaultRadius: 10,
        switchThumbSchemeColor: SchemeColor.secondaryContainer,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorPrefixIconSchemeColor: isLight
            ? SchemeColor.primary
            : null,
        inputDecoratorSuffixIconSchemeColor: isLight
            ? SchemeColor.primary
            : null,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabForegroundSchemeColor: isUsingGreatFeastTheme
            ? SchemeColor.onPrimaryContainer
            : SchemeColor.onPrimary,
        chipSchemeColor: SchemeColor.transparent,
        chipSelectedSchemeColor: SchemeColor.primary,
        chipSecondarySelectedSchemeColor: SchemeColor.primary,
        chipIconSize: 22,
        chipRadius: 5,
        alignedDropdown: true,
        dialogBackgroundSchemeColor: isLight
            ? SchemeColor.secondaryContainer
            : null,
        appBarBackgroundSchemeColor: isLight ? SchemeColor.tertiary : null,
        useInputDecoratorThemeInDialogs: true,
        bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
        bottomNavigationBarMutedUnselectedLabel: true,
        bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        bottomNavigationBarMutedUnselectedIcon: true,
        bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
        bottomNavigationBarShowUnselectedLabels: false,
        menuRadius: 10,
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
      textTheme: AppTypography.defaultRoles,
    );

    final colorScheme = rawThemeData.colorScheme;

    final Typography typography = AppTypography.build(
      platform: defaultTargetPlatform,
      colorScheme: colorScheme,
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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: themeData.elevatedButtonTheme.style!.copyWith(
          foregroundColor: isUsingGreatFeastTheme
              ? WidgetStateProperty.all(colorScheme.onSecondaryContainer)
              : null,
          iconColor: WidgetStateProperty.all(colorScheme.onSecondaryContainer),
          textStyle: WidgetStateProperty.all(themeData.textTheme.titleMedium),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: themeData.outlinedButtonTheme.style!.copyWith(
          foregroundColor: isUsingGreatFeastTheme
              ? WidgetStateProperty.all(colorScheme.onPrimary)
              : null,
          textStyle: WidgetStateProperty.all(themeData.textTheme.titleMedium),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: themeData.textButtonTheme.style!.copyWith(
          foregroundColor: isUsingGreatFeastTheme && isLight
              ? WidgetStateProperty.all(colorScheme.onPrimary)
              : null,
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
      inputDecorationTheme: isUsingGreatFeastTheme
          ? null
          : themeData.inputDecorationTheme.copyWith(
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
      // colorScheme.onPrimary is white, computed under the assumption that
      // primary is a dark saturated tone; this app's primary is a light
      // gold/tan brand color, so white content on it is washed out.
      // onPrimaryContainer stays properly dark against that same color.
      chipTheme: themeData.chipTheme.copyWith(
        color: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? themeData.colorScheme.primary
              : themeData.scaffoldBackgroundColor,
        ),
        checkmarkColor: colorScheme.onPrimary,
        labelStyle: themeData.textTheme.titleMedium?.copyWith(
          color: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? themeData.colorScheme.onPrimary
                : themeData.textTheme.titleMedium!.color!,
          ),
        ),
        secondaryLabelStyle: themeData.textTheme.titleMedium?.copyWith(
          color: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? themeData.colorScheme.onPrimary
                : themeData.textTheme.titleMedium!.color!,
          ),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  final UserPreferencesService _userPreferencesService;

  final BehaviorSubject<ThemeData> _themeData;

  Stream<ThemeData> get stream => _themeData.share();

  ThemeData get theme => _themeData.value;
  set theme(ThemeData themeData) {
    _themeData.add(themeData);
  }

  factory ThemingService({
    required UserPreferencesService userPreferencesService,
  }) => ThemingService.withInitialThemeata(
    userPreferencesService: userPreferencesService,
    initialTheme: getDefault(userPreferencesService: userPreferencesService),
  );

  ThemingService.withInitialThemeata({
    required this._userPreferencesService,
    required ThemeData initialTheme,
  }) : _themeData = BehaviorSubject.seeded(initialTheme) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    switchTheme(
      _userPreferencesService.darkTheme ??
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

abstract final class AppColors {
  static const Color primary = Color(0xFFB38A58);
  static const Color secondary = Color(0xFFC7A483);
  static const Color tertiary = Color(0xFFE2CABF);
}

extension ChurchAdminTheming on ThemeData {
  /// Workaround for flutter issue [#118063](https://github.com/flutter/flutter/issues/118063)
  ButtonStyle? get filledTonalButtonStyleWorkaround =>
      brightness == Brightness.light
      ? filledButtonTheme.style?.copyWith(
          backgroundColor: WidgetStateProperty.all(colorScheme.primaryFixed),
        )
      : filledButtonTheme.style;

  ButtonStyle get largeFilledButtonStyle => filledButtonTheme.style!.copyWith(
    textStyle: WidgetStateProperty.all(textTheme.titleLarge),
  );
}
