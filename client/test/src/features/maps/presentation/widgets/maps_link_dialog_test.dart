import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  tearDown(resetGlobalProviderContainer);

  Future<void> pumpDialogWithClipboard(
    WidgetTester tester,
    String? clipboardText,
  ) async {
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async => switch (call.method) {
        'Clipboard.hasStrings' => {'value': clipboardText != null},
        'Clipboard.getData' =>
          clipboardText == null ? null : {'text': clipboardText},
        _ => null,
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );

    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: MapsLinkDialog())),
    );
    await tester.pump();
  }

  String? fieldText(WidgetTester tester) => tester
      .widget<TextField>(find.byKey(MapsLinkDialogKeys.linkField))
      .controller
      ?.text;

  testWidgets('a maps link on the clipboard is filled in for the user', (
    tester,
  ) async {
    await pumpDialogWithClipboard(
      tester,
      'https://maps.app.goo.gl/jkBfnFhsrs4q9p5p7',
    );

    expect(fieldText(tester), 'https://maps.app.goo.gl/jkBfnFhsrs4q9p5p7');
  });

  testWidgets('clipboard text that is not a maps link is left out', (
    tester,
  ) async {
    await pumpDialogWithClipboard(tester, 'https://example.com/page');

    expect(fieldText(tester), isEmpty);
  });
}
