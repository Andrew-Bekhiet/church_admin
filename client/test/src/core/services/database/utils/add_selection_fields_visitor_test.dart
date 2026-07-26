import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

void main() {
  group('AddSelectionFieldsVisitor', () {
    void expectAdded(
      String source,
      Map<String, List<SelectionNode>> fieldsToAdd,
      String expected,
    ) {
      expect(
        printNode(
          transform(parseString(source), [
            AddSelectionFieldsVisitor(fieldsToAdd),
          ]),
        ),
        printNode(parseString(expected)),
      );
    }

    test('appends the added fields to the matching root field', () {
      expectAdded(
        'subscription watchAllPersons { persons { id __typename } }',
        {
          'persons': {'personType': {'order': null}}.asGQLSelectionNode(),
        },
        'subscription watchAllPersons '
            '{ persons { id __typename personType { order } } }',
      );
    });

    test('appends every added path without merging them', () {
      expectAdded(
        'subscription watchAllPersons { persons { id } }',
        {
          'persons': [
            ...{'personType': {'name': null}}.asGQLSelectionNode(),
            ...{'personType': {'order': null}}.asGQLSelectionNode(),
          ],
        },
        'subscription watchAllPersons '
            '{ persons { id personType { name } personType { order } } }',
      );
    });

    test('adds fields to every operation definition in the document', () {
      expectAdded(
        'subscription watchAllPersons { persons { id } } '
            'subscription watchNamedPersons { persons { name } }',
        {
          'persons': {'personType': {'order': null}}.asGQLSelectionNode(),
        },
        'subscription watchAllPersons { persons { id personType { order } } } '
            'subscription watchNamedPersons '
            '{ persons { name personType { order } } }',
      );
    });

    test('leaves same-named fields nested inside a fragment untouched', () {
      expectAdded(
        'subscription watchAllPersons { persons { ...Person } } '
            'fragment Person on Persons { id families { persons { id } } }',
        {
          'persons': {'personType': {'order': null}}.asGQLSelectionNode(),
        },
        'subscription watchAllPersons '
            '{ persons { ...Person personType { order } } } '
            'fragment Person on Persons { id families { persons { id } } }',
      );
    });

    test('leaves unmatched fields and empty additions untouched', () {
      const document = 'subscription watchAllPersons { persons { id } }';

      expectAdded(document, {'families': []}, document);
      expectAdded(document, {'persons': []}, document);
    });
  });
}
