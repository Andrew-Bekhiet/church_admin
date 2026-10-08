import 'package:flutter/material.dart';

abstract final class AppTypography {
  static const String cairo = 'Cairo';
  static const String elMessiri = 'El Messiri';
  static const String amiri = 'Amiri';

  static const TextTheme defaultRoles = TextTheme(
    displayLarge: TextStyle(
      fontFamily: elMessiri,
      fontWeight: FontWeight.w700,
      fontSize: 40,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    displayMedium: TextStyle(
      fontFamily: elMessiri,
      fontWeight: FontWeight.w700,
      fontSize: 32,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    displaySmall: TextStyle(
      fontFamily: amiri,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      height: 2,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    headlineLarge: TextStyle(
      fontFamily: elMessiri,
      fontWeight: FontWeight.w700,
      fontSize: 28,
      height: 1.45,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    headlineMedium: TextStyle(
      fontFamily: elMessiri,
      fontWeight: FontWeight.w600,
      fontSize: 24,
      height: 1.45,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    headlineSmall: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w700,
      fontSize: 22,
      height: 1.4,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    titleLarge: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 1.4,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    titleMedium: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    titleSmall: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.45,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    bodyLarge: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    bodyMedium: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight(450),
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    bodySmall: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight(450),
      fontSize: 12,
      height: 1.5,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    labelLarge: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    labelMedium: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.4,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
    labelSmall: TextStyle(
      fontFamily: cairo,
      fontWeight: FontWeight.w600,
      fontSize: 11,
      height: 1.45,
      letterSpacing: 0,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  );

  static Typography build({
    required TargetPlatform platform,
    required ColorScheme colorScheme,
    TextTheme roles = defaultRoles,
  }) {
    final platformDefaults = Typography.material2021(
      platform: platform,
      colorScheme: colorScheme,
    );
    final geometry = _geometryOf(roles);

    return Typography(
      black: platformDefaults.black.merge(roles),
      white: platformDefaults.white.merge(roles),
      englishLike: geometry,
      dense: geometry,
      tall: geometry,
    );
  }

  static TextTheme _geometryOf(TextTheme roles) {
    TextStyle? withoutFamily(TextStyle? role) => role == null
        ? null
        : TextStyle(
            fontWeight: role.fontWeight,
            fontSize: role.fontSize,
            height: role.height,
            letterSpacing: role.letterSpacing,
            leadingDistribution: role.leadingDistribution,
          );

    return TextTheme(
      displayLarge: withoutFamily(roles.displayLarge),
      displayMedium: withoutFamily(roles.displayMedium),
      displaySmall: withoutFamily(roles.displaySmall),
      headlineLarge: withoutFamily(roles.headlineLarge),
      headlineMedium: withoutFamily(roles.headlineMedium),
      headlineSmall: withoutFamily(roles.headlineSmall),
      titleLarge: withoutFamily(roles.titleLarge),
      titleMedium: withoutFamily(roles.titleMedium),
      titleSmall: withoutFamily(roles.titleSmall),
      bodyLarge: withoutFamily(roles.bodyLarge),
      bodyMedium: withoutFamily(roles.bodyMedium),
      bodySmall: withoutFamily(roles.bodySmall),
      labelLarge: withoutFamily(roles.labelLarge),
      labelMedium: withoutFamily(roles.labelMedium),
      labelSmall: withoutFamily(roles.labelSmall),
    );
  }
}
