import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

abstract final class HomeWidgetPump {
  static Future<void> pump(WidgetTester tester, Widget child) {
    return tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [Locale('ar', 'EG')],
        locale: const Locale('ar', 'EG'),
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: child)),
      ),
    );
  }
}
