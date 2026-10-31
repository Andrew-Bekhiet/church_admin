import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  final nameField = PersonFields().name;

  Future<MessageTemplateEditingController> pumpField(
    WidgetTester tester,
    String storedText,
  ) async {
    final controller = MessageTemplateEditingController(
      template: MessageTemplate(text: storedText, fields: [nameField]),
    );
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Material(child: MessageTemplateField(controller: controller)),
        ),
      ),
    );

    return controller;
  }

  testWidgets("a field's insert button adds its placeholder as a chip", (
    tester,
  ) async {
    final controller = await pumpField(tester, 'كل سنة وانت طيب يا ');
    controller.selection = TextSelection.collapsed(
      offset: controller.text.length,
    );

    await tester.tap(
      find.byKey(MessageTemplateFieldKeys.insertButtonFor(nameField)),
    );
    await tester.pump();

    expect(controller.template.text, 'كل سنة وانت طيب يا {name}');
    expect(
      find.descendant(
        of: find.byKey(MessageTemplateFieldKeys.textField),
        matching: find.byType(PlaceholderChip),
      ),
      findsOneWidget,
    );
  });

  testWidgets('one backspace after a chip removes the whole placeholder', (
    tester,
  ) async {
    final controller = await pumpField(tester, 'يا {name}');

    await tester.tap(find.byKey(MessageTemplateFieldKeys.textField));
    await tester.pump();
    controller.selection = TextSelection.collapsed(
      offset: controller.text.length,
    );
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.backspace);
    await tester.pump();

    expect(controller.template.text, 'يا ');
  });
}
