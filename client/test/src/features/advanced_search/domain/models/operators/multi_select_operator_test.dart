import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-id', name: 'name');
  const church = Church(id: 'church-id', name: 'name');

  test('picking rows of the searched type matches them by their own key', () {
    expect(
      Filter(PersonFields().id, MultiSelectOperator.anyOf, [
        person,
      ]).queryToJson(),
      {
        'id': {
          '_in': [person.id],
        },
      },
    );
  });

  test('picking related rows matches them by the related key', () {
    expect(
      Filter(PersonFields().church, MultiSelectOperator.noneOf, [
        church,
      ]).queryToJson(),
      {
        'church': {
          'id': {
            '_nin': [church.id],
          },
        },
      },
    );
  });
}
