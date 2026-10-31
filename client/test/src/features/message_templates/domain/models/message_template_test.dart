import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final nameField = PersonFields().name;
  final person = Person(id: 'p1', name: 'مينا جرجس');

  test("rendering fills every placeholder with the item's field value", () {
    final template = MessageTemplate(
      text: 'كل سنة وانت طيب يا {name}، ربنا يفرح {name}',
      fields: [nameField],
    );

    expect(
      template.renderFor(person),
      'كل سنة وانت طيب يا ${person.name}، ربنا يفرح ${person.name}',
    );
  });

  test('a token naming a field the template does not offer stays as typed', () {
    final template = MessageTemplate(
      text: 'اهلا {name} من {church}',
      fields: [nameField],
    );

    expect(template.renderFor(person), 'اهلا ${person.name} من {church}');
  });

  test('a field without a value renders as nothing', () {
    final template = MessageTemplate(text: 'اهلا {name}', fields: [nameField]);

    expect(template.renderFor(Person(id: 'p2', name: '')), 'اهلا ');
  });
}
