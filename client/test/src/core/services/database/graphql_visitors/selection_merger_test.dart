import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

void main() {
  String merged(String document) =>
      printNode(transform(parseString(document), [const SelectionMerger()]));

  String printed(String document) => printNode(parseString(document));

  test('sibling fields with the same name become one field', () {
    expect(
      merged('{ persons { personType { name } personType { order } } }'),
      printed('{ persons { personType { name order } } }'),
    );
  });

  test('merged fields merge their nested selections too', () {
    expect(
      merged(
        '{ persons { address { area { id } } address { area { name } } } }',
      ),
      printed('{ persons { address { area { id name } } } }'),
    );
  });

  test('a field repeated verbatim is selected once', () {
    expect(
      merged('{ persons { id name id } }'),
      printed('{ persons { id name } }'),
    );
  });

  test('fields with different arguments stay separate', () {
    expect(
      merged('{ persons { tags(limit: 1) { id } tags(limit: 2) { name } } }'),
      printed('{ persons { tags(limit: 1) { id } tags(limit: 2) { name } } }'),
    );
  });

  test('fields with different directives stay separate', () {
    expect(
      merged('{ persons { name @include(if: true) name } }'),
      printed('{ persons { name @include(if: true) name } }'),
    );
  });
}
