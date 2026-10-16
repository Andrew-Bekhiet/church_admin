import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class MaterialUiTestApp extends StatelessWidget {
  final Widget child;
  final Iterable<LocalizationsDelegate<dynamic>>? localizations;
  final Iterable<Locale> supportedLocales;
  final ThemeData? theme;

  const MaterialUiTestApp({
    required this.child,
    this.localizations,
    this.supportedLocales = const [Locale('en')],
    this.theme,
    super.key,
  });

  MaterialUiTestApp.withThemeAndLocale({required this.child, super.key})
    : localizations = GlobalMaterialLocalizations.delegates,
      supportedLocales = const [Locale('ar', 'EG')],
      theme = ThemingService.getDefault(
        isDarkOverride: false,
        greatFeastThemeOverride: false,
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
    localizationsDelegates: localizations,
    supportedLocales: supportedLocales,
    theme: theme?.copyWith(platform: TargetPlatform.android),
    debugShowCheckedModeBanner: false,
    home: Material(child: child),
  );
}
