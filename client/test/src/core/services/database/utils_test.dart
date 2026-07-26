import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
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

    test(
      'merges a bare leaf field into an object selection of the same name',
      () {
        final document = parseString(
          'subscription watchAllPersons { persons { id } }',
        );

        final result = document.withSelectionFields({
          'persons': [
            ...['personType'].asGQLSelectionNode(),
            ...['personType', 'order'].asGQLSelectionNode(),
          ],
        });

        expect(
          printNode(result),
          printNode(
            parseString(
              'subscription watchAllPersons '
              '{ persons { id personType { order } } }',
            ),
          ),
        );
      },
    );

    test('merges fields sharing an alias as the response key', () {
      final document = parseString(
        'subscription watchAllPersons '
        '{ persons { p: personType { name } p: personType { order } } }',
      );

      final result = document.withSelectionFields({
        'persons': ['id'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { p: personType { name order } id } }',
          ),
        ),
      );
    });

    test('keeps same-name fields with different aliases separate', () {
      final document = parseString(
        'subscription watchAllPersons '
        '{ persons { a: personType { name } b: personType { order } } }',
      );

      final result = document.withSelectionFields({
        'persons': ['id'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { a: personType { name } b: personType { order } id } }',
          ),
        ),
      );
    });

    test('keeps same-name fields with different arguments separate', () {
      final document = parseString(
        'subscription watchAllPersons '
        '{ persons { children(limit: 1) { id } children(limit: 2) { name } } }',
      );

      final result = document.withSelectionFields({
        'persons': ['id'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons '
            '{ children(limit: 1) { id } children(limit: 2) { name } id } }',
          ),
        ),
      );
    });

    test('keeps same-name fields with different directives separate', () {
      final document = parseString(
        'subscription watchAllPersons '
        '{ persons { name @include(if: true) name @skip(if: true) } }',
      );

      final result = document.withSelectionFields({
        'persons': ['id'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { name @include(if: true) name @skip(if: true) id } }',
          ),
        ),
      );
    });

    test('merges duplicates nested deeper than two levels', () {
      final document = parseString(
        'subscription watchAllPersons { persons { id } }',
      );

      final result = document.withSelectionFields({
        'persons': [
          ...['services', 'type', 'name'].asGQLSelectionNode(),
          ...['services', 'type', 'order'].asGQLSelectionNode(),
        ],
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { id services { type { name order } } } }',
          ),
        ),
      );
    });

    test('adds fields to every operation definition in the document', () {
      final document = parseString(
        'subscription watchAllPersons { persons { id } } '
        'subscription watchNamedPersons { persons { name } }',
      );

      final result = document.withSelectionFields({
        'persons': ['personType', 'order'].asGQLSelectionNode(),
      });

      expect(
        printNode(result),
        printNode(
          parseString(
            'subscription watchAllPersons '
            '{ persons { id personType { order } } } '
            'subscription watchNamedPersons '
            '{ persons { name personType { order } } }',
          ),
        ),
      );
    });
  });
}
