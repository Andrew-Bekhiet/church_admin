import 'package:church_admin/church_admin.dart';
import 'package:golden_toolkit/golden_toolkit.dart' show WidgetWrapper;
import 'package:material_ui/material_ui.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';

WidgetWrapper materialAppWithThemeAndLocale() => materialAppWrapper(
  localeOverrides: [const Locale('ar', 'EG')],
  localizations: GlobalMaterialLocalizations.delegates,
  theme: ThemingService.getDefault(
    isDarkOverride: false,
    greatFeastThemeOverride: false,
  ),
);

// golden_toolkit's own wrapper builds the framework's MaterialApp, which
// material_ui widgets cannot read their theme or localizations from
WidgetWrapper materialAppWrapper({
  Iterable<LocalizationsDelegate<dynamic>>? localizations,
  Iterable<Locale>? localeOverrides,
  ThemeData? theme,
}) =>
    (child) => MaterialApp(
      localizationsDelegates: localizations,
      supportedLocales: localeOverrides ?? const [Locale('en')],
      theme: theme?.copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      home: Material(child: child),
    );

void defaultTearDown() {
  resetGlobalProviderContainer();
  resetMockitoState();
  resetMocktailState();
}
