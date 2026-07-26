import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

void main() {
  group('MergeDuplicateSelectionsVisitor', () {
    DocumentNode merge(String source) {
      return transform(parseString(source), [
        const MergeDuplicateSelectionsVisitor(),
      ]);
    }

    void expectMerge(String source, String expected) {
      expect(printNode(merge(source)), printNode(parseString(expected)));
    }

    test('merges duplicate siblings sharing a parent', () {
      expectMerge(
        'subscription watchAllPersons '
            '{ persons { id personType { name } personType { order } } }',
        'subscription watchAllPersons '
            '{ persons { id personType { name order } } }',
      );
    });

    test(
      'merges a bare leaf field into an object selection of the same name',
      () {
        expectMerge(
          'subscription watchAllPersons '
              '{ persons { id personType personType { order } } }',
          'subscription watchAllPersons { persons { id personType { order } } }',
        );
      },
    );

    test('collapses leaf duplicates without an empty selection set', () {
      expectMerge(
        'subscription watchAllPersons { persons { name name } }',
        'subscription watchAllPersons { persons { name } }',
      );
    });

    test('merges duplicates introduced by merging their parents', () {
      expectMerge(
        'subscription watchAllPersons '
            '{ persons { services { type { name } } services { type { order } } } }',
        'subscription watchAllPersons '
            '{ persons { services { type { name order } } } }',
      );
    });

    test('merges fields sharing an alias as the response key', () {
      expectMerge(
        'subscription watchAllPersons '
            '{ persons { p: personType { name } p: personType { order } } }',
        'subscription watchAllPersons { persons { p: personType { name order } } }',
      );
    });

    test('keeps same-name fields with different aliases separate', () {
      const document =
          'subscription watchAllPersons '
          '{ persons { a: personType { name } b: personType { order } } }';

      expectMerge(document, document);
    });

    test('keeps same-name fields with different arguments separate', () {
      const document =
          'subscription watchAllPersons '
          '{ persons { children(limit: 1) { id } children(limit: 2) { name } } }';

      expectMerge(document, document);
    });

    test('keeps same-name fields with different directives separate', () {
      const document =
          'subscription watchAllPersons '
          '{ persons { name @include(if: true) name @skip(if: true) } }';

      expectMerge(document, document);
    });

    test('leaves duplicates straddling a fragment spread alone', () {
      const document =
          'subscription watchAllPersons { persons { ...Person name } } '
          'fragment Person on Persons { name }';

      expectMerge(document, document);
    });
  });
}
