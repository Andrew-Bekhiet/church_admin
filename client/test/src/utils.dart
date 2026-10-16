import 'package:church_admin/church_admin.dart';
import 'package:golden_toolkit/golden_toolkit.dart' show WidgetWrapper;
import 'package:material_ui/material_ui.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';

import 'material_ui_test_app.dart';

WidgetWrapper materialAppWithThemeAndLocale() => MaterialUiTestApp.wrapper(
  localeOverrides: [const Locale('ar', 'EG')],
  localizations: GlobalMaterialLocalizations.delegates,
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
