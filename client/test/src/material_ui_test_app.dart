import 'package:golden_toolkit/golden_toolkit.dart' show WidgetWrapper;
import 'package:material_ui/material_ui.dart';

// golden_toolkit's own wrapper builds the framework's MaterialApp, which
// material_ui widgets cannot read their theme or localizations from
abstract final class MaterialUiTestApp {
  static WidgetWrapper wrapper({
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
}
