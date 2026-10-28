import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  final nameField = PersonFields().name;

  PlaceholderTextEditingController controllerWith(String storedText) =>
      PlaceholderTextEditingController(
        template: MessageTemplate(text: storedText, fields: [nameField]),
      );

  void typeAtEnd(PlaceholderTextEditingController controller, String typed) {
    final text = controller.text + typed;
    controller.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }

  test('a stored template comes back unchanged after editing nothing', () {
    const stored = 'كل سنة وانت طيب يا {name} 🎂';
    final controller = controllerWith(stored);
    addTearDown(controller.dispose);

    expect(controller.template.text, stored);
  });

  test('each placeholder takes a single character while editing', () {
    final controller = controllerWith('يا {name}');
    addTearDown(controller.dispose);

    expect(controller.text.length, 'يا '.length + 1);
  });

  test('an inserted placeholder is stored by its field name at the cursor', () {
    final controller = controllerWith('يا  اهلا');
    addTearDown(controller.dispose);

    controller
      ..selection = const TextSelection.collapsed(offset: 3)
      ..insertPlaceholder(nameField);

    expect(controller.template.text, 'يا {name} اهلا');
  });

  test('inserting a placeholder moves the cursor past it', () {
    final controller = controllerWith('يا ');
    addTearDown(controller.dispose);

    controller
      ..selection = const TextSelection.collapsed(offset: 3)
      ..insertPlaceholder(nameField);

    expect(controller.selection, const TextSelection.collapsed(offset: 4));
  });

  test('typing a field name token turns it into a placeholder', () {
    final controller = controllerWith('');
    addTearDown(controller.dispose);

    typeAtEnd(controller, 'يا {name}');

    expect(controller.text.length, 'يا '.length + 1);
    expect(controller.template.text, 'يا {name}');
  });

  test('typing a field label token turns it into a placeholder too', () {
    final controller = controllerWith('');
    addTearDown(controller.dispose);

    typeAtEnd(controller, 'يا {${nameField.label}}');

    expect(controller.template.text, 'يا {name}');
  });

  test('a typed token keeps the cursor right after the placeholder', () {
    final controller = controllerWith('');
    addTearDown(controller.dispose);

    typeAtEnd(controller, '{name}');

    expect(controller.selection, const TextSelection.collapsed(offset: 1));
  });

  test('a token being composed by the keyboard is left as typed', () {
    final controller = controllerWith('');
    addTearDown(controller.dispose);

    controller.value = const TextEditingValue(
      text: '{name}',
      selection: TextSelection.collapsed(offset: 6),
      composing: TextRange(start: 1, end: 5),
    );

    expect(controller.text, '{name}');
  });

  test('a combining mark typed right after a placeholder is dropped', () {
    final controller = controllerWith('يا {name}');
    addTearDown(controller.dispose);

    typeAtEnd(controller, 'َ');

    expect(controller.template.text, 'يا {name}');
  });

  test("the keyboard's composing range never covers a placeholder", () {
    final controller = controllerWith('يا {name}');
    addTearDown(controller.dispose);

    controller.value = controller.value.copyWith(
      composing: TextRange(start: 0, end: controller.text.length),
    );

    expect(controller.value.composing, TextRange.empty);
  });

  test('a stray placeholder character of no offered field is removed', () {
    final controller = controllerWith('');
    addTearDown(controller.dispose);

    typeAtEnd(controller, 'يا ');

    expect(controller.template.text, 'يا ');
  });

  testWidgets('a placeholder shows as a chip with the field label', (
    tester,
  ) async {
    final controller = controllerWith('يا {name}');
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Material(child: TextField(controller: controller)),
      ),
    );

    expect(
      find.descendant(
        of: find.byType(TextField),
        matching: find.text(nameField.label),
      ),
      findsOneWidget,
    );
  });
}
