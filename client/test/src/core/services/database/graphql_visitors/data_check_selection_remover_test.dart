import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/subscriptions.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

void main() {
  String withoutDataChecks(String document) =>
      printNode(DataCheckSelectionRemover.removeFrom(parseString(document)));

  String printed(String document) => printNode(parseString(document));

  test(
    'a document loses every dataCheck selection and the DataCheck fragment',
    () {
      expect(
        withoutDataChecks('''
        subscription watch { persons { ...Person } families { id dataCheck { ...DataCheck } } }
        fragment Person on Persons { id name dataCheck { ...DataCheck } }
        fragment DataCheck on DataChecks { percentage }
      '''),
        printed('''
        subscription watch { persons { ...Person } families { id } }
        fragment Person on Persons { id name }
      '''),
      );
    },
  );

  test('a document without data checks comes back unchanged', () {
    const document = r'''
      query q($id: uuid!) { persons(where: {id: {_eq: $id}}) { ...Person } }
      fragment Person on Persons { id name }
    ''';

    expect(withoutDataChecks(document), printed(document));
  });

  test('the generated persons subscription no longer selects dataCheck', () {
    final stripped = printNode(
      DataCheckSelectionRemover.removeFrom(
        documentNodeSubscriptionwatchAllPersons,
      ),
    );

    expect(
      printNode(documentNodeSubscriptionwatchAllPersons),
      contains('dataCheck'),
    );
    expect(stripped, isNot(contains('dataCheck')));
    expect(stripped, isNot(contains('fragment DataCheck')));
  });
}
