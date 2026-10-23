import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshFilterTranslator();
  final person = Person(id: 'person-id', name: 'name');
  const church = Church(id: 'church-id', name: 'name');

  test('picking rows of the searched type matches them by their own key', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().id, MultiSelectOperator.anyOf, [person]),
      ]),
      {
        'id': {
          'in': [person.id],
        },
      },
    );
  });

  test('picking related rows matches them by the related key', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().church, MultiSelectOperator.anyOf, [church]),
      ]),
      {
        'church': {
          'id': {
            'in': [church.id],
          },
        },
      },
    );
  });

  test('excluding related rows negates matching them by the related key', () {
    expect(
      translator.toFilterInput([
        Filter(PersonFields().church, MultiSelectOperator.noneOf, [church]),
      ]),
      {
        'not': [
          {
            'church': {
              'id': {
                'in': [church.id],
              },
            },
          },
        ],
      },
    );
  });
}
