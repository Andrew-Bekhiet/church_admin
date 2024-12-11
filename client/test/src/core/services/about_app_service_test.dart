import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  final githubUri = Uri.parse('https://github.com');
  final termsOfServiceUri = Uri.parse('https://terms-of-service.com');
  final privacyPolicyUri = Uri.parse('https://privacy-policy.com');

  testGoldens(
    'Shows the dialog',
    (tester) async {
      final unit = AboutAppService(
        version: '1.0.0',
        appIcon: const SizedBox(),
        githubUrl: githubUri,
        termsOfServiceUrl: termsOfServiceUri,
        privacyPolicyUrl: privacyPolicyUri,
        urlLauncher: (uri) {},
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () => unit.showAboutDialog(context),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      expect(
        find.text('كنيسة السيدة العذراء مريم', findRichText: true),
        findsOneWidget,
      );
      expect(find.text('1.0.0', findRichText: true), findsOneWidget);
      expect(
        find.text('جميع الحقوق محفوظة © 2022-${DateTime.now().year}', findRichText: true),
        findsOneWidget,
      );
      expect(
        find.text(
          'التطبيق مفتوح المصدر ومتاح على GitHub تحت ترخيص Apache License 2.0',
          findRichText: true,
        ),
        findsOneWidget,
      );
      expect(
        find.textContaining('شروط الاستخدام', findRichText: true),
        findsOneWidget,
      );
      expect(
        find.textContaining('سياسة الخصوصية', findRichText: true),
        findsOneWidget,
      );

      await screenMatchesGolden(tester, 'about_app_service_dialog');
    },
  );
}
