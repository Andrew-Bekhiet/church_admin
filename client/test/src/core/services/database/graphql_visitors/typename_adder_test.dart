import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

void main() {
  String withTypenames(String document) =>
      printNode(transform(parseString(document), [const TypenameAdder()]));

  String printed(String document) => printNode(parseString(document));

  test('every object a field selects also selects __typename', () {
    expect(
      withTypenames('{ persons { name personType { id name } } }'),
      printed(
        '{ persons { __typename name personType { __typename id name } } }',
      ),
    );
  });

  test('an object already selecting __typename selects it once', () {
    expect(
      withTypenames('{ persons { __typename id } }'),
      printed('{ persons { __typename id } }'),
    );
  });
}
