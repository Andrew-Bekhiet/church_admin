import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

void main() {
  group('withSelectionFields', () {
    test('merges added fields sharing a parent into one selection', () {
      final document = parseString(
        'subscription watchAllPersons { persons { id __typename } }',
      );

      final result = document.withSelectionFields({
        'persons': [
          ...['personType', 'name'].asGQLSelectionNode(),
          ...['personType', 'order'].asGQLSelectionNode(),
        ],
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { id __typename personType { name order } } }',
          ),
        ),
      );
    });

    test('merges added fields into an existing selection of the same name', () {
      final document = parseString(
        'subscription watchAllPersons { persons { personType { name } } }',
      );

      final result = document.withSelectionFields({
        'persons': ['personType', 'order'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { personType { name order } } }',
          ),
        ),
      );
    });

    test('keeps leaf duplicates as a single field without a selection set', () {
      final document = parseString(
        'subscription watchAllPersons { persons { name } }',
      );

      final result = document.withSelectionFields({
        'persons': ['name'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString('subscription watchAllPersons { persons { name } }'),
        ),
      );
    });

    test('leaves fragment definitions and unmatched fields untouched', () {
      final document = parseString(
        'subscription watchAllPersons { persons { ...Person } } '
        'fragment Person on Persons { id families { persons { id } } }',
      );

      final result = document.withSelectionFields({
        'persons': ['personType', 'order'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { ...Person personType { order } } } '
            'fragment Person on Persons { id families { persons { id } } }',
          ),
        ),
      );
    });
  });
}
