import 'package:church_admin/church_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';

WidgetWrapper materialAppWithThemeAndLocale() => materialAppWrapper(
  localeOverrides: [const Locale('ar', 'EG')],
  localizations: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  theme: ThemingService.getDefault(
    isDarkOverride: false,
    greatFeastThemeOverride: false,
  ),
);

void defaultTearDown() {
  resetGlobalProviderContainer();
  resetMockitoState();
  resetMocktailState();
}
