import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../ash_query/ash_document_validity.dart';

void main() {
  final validity = AshDocumentValidity.ofSchema();
  final familiesPage = parseString('''
    query families { families { count endKeyset results { id name } } }
  ''');

  final recordedByFields = {
    'last edit': FamilyFields().lastEdit,
    'last visit': FamilyFields().lastVisit,
    'last father visit': FamilyFields().lastFatherVisit,
  };

  for (final MapEntry(key: label, value: field) in recordedByFields.entries) {
    group('a list sorted by $label', () {
      final document = ArrangedListDocument(familiesPage)
          .arrangedBy(ListArrangement(orderBy: [OrderBy(field: field)]));

      test('selects only what the server has', () {
        expect(validity.problemsOf(document), isEmpty);
      });

      test('selects the latest record as a relationship', () {
        final latestName = AshNaming.latestRelationship(field.name);

        expect(printNode(document), contains('$latestName {'));
      });
    });
  }

  test('the validity check rejects a time selected inside the scalar', () {
    final document = parseString('''
      query families { families { results { id lastEdit { time } } } }
    ''');

    expect(validity.problemsOf(document), isNotEmpty);
  });

  test(
    'a document that is not a keyset page keeps the sub-selection of the field',
    () {
      final document =
          ArrangedListDocument(
            parseString('query families { families { id name } }'),
          ).arrangedBy(
            ListArrangement(orderBy: [OrderBy(field: FamilyFields().lastEdit)]),
          );

      expect(printNode(document), isNot(contains('latestEdit')));
    },
  );
}
