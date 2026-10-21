import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/subscriptions.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'graphql_response_projector.dart';

void main() {
  const personId = '11111111-1111-1111-1111-111111111111';
  const personTypeId = '22222222-2222-2222-2222-222222222222';
  const mainPhone = '01000000000';

  const personRow = {
    '__typename': 'Persons',
    'id': personId,
    'name': 'مينا',
    'jobDescription': 'مهندس',
    'personType': {
      '__typename': 'PersonTypes',
      'id': personTypeId,
      'name': 'أب',
      'order': 1,
    },
    'contacts': [
      {
        '__typename': 'Contacts',
        'id': '33333333-3333-3333-3333-333333333333',
        'label': null,
        'phone': mainPhone,
        'isMainPhone': true,
      },
    ],
  };

  const detailRequest = Request(
    operation: Operation(document: documentNodeSubscriptionwatchPerson),
    variables: {'id': personId},
  );

  Request arrangedListRequest(ListArrangement arrangement) => Request(
    operation: Operation(
      document: const ArrangedListDocument(
        documentNodeSubscriptionwatchAllPersons,
      ).arrangedBy(arrangement),
    ),
  );

  Request sortedListRequest(FieldMetadata sortField) => arrangedListRequest(
    ListArrangement(orderBy: [OrderBy(field: sortField)]),
  );

  GraphQLCache cacheWithAppTypePolicies() => GraphQLCache(
    store: InMemoryStore(),
    typePolicies: GqlTypePolicies.policies,
  );

  void writeAsServerAnswers(GraphQLCache cache, Request request) {
    cache.writeQuery(
      request,
      broadcast: false,
      data: GraphQLResponseProjector(request.operation.document).respond({
        'personsByPk': personRow,
        'persons': [personRow],
      }),
    );
  }

  group('a persons list sorted by person type', () {
    test(
      'reads back after the detail screen cached the same person type',
      () {
        final cache = cacheWithAppTypePolicies();
        final listRequest = sortedListRequest(PersonFields().personType);
        writeAsServerAnswers(cache, detailRequest);

        writeAsServerAnswers(cache, listRequest);

        expect(cache.readQuery(listRequest)?['persons'], [
          containsPair(
            'personType',
            allOf(containsPair('name', 'أب'), containsPair('order', 1)),
          ),
        ]);
      },
    );

    test(
      'still reads back when the detail screen caches the person type after '
      'the list',
      () {
        final cache = cacheWithAppTypePolicies();
        final listRequest = sortedListRequest(PersonFields().personType);
        writeAsServerAnswers(cache, listRequest);

        writeAsServerAnswers(cache, detailRequest);

        expect(cache.readQuery(listRequest), isNotNull);
      },
    );

    test(
      'stores the person type as a link or as copied fields, never a mix',
      () {
        final store = InMemoryStore();
        final cache = GraphQLCache(
          store: store,
          typePolicies: GqlTypePolicies.policies,
        );
        writeAsServerAnswers(cache, detailRequest);

        writeAsServerAnswers(
          cache,
          sortedListRequest(PersonFields().personType),
        );

        final storedPersonType = store.get('Persons:$personId')?['personType'];
        expect(
          storedPersonType,
          anyOf(
            equals({r'$ref': 'PersonTypes:$personTypeId'}),
            isNot(contains(r'$ref')),
          ),
        );
      },
    );
  });

  test('a persons list sorted by main phone reads back the main phone', () {
    final cache = cacheWithAppTypePolicies();
    final listRequest = sortedListRequest(PersonFields().mainPhone);

    writeAsServerAnswers(cache, listRequest);

    final persons = cache.readQuery(listRequest)!['persons'] as List;
    expect(
      PersonFields().mainPhone.getValue(
        Person.fromJson(persons.single as Json),
      ),
      mainPhone,
    );
  });

  group('a persons list with a chosen second line', () {
    test('reads back a scalar field the list does not otherwise select', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = arrangedListRequest(
        ListArrangement(
          orderBy: [OrderBy(field: PersonFields().name)],
          secondLineField: PersonFields().jobDescription,
        ),
      );

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        containsPair('jobDescription', personRow['jobDescription']),
      ]);
    });

    test('reads back the name of a relation the list does not otherwise '
        'select', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = arrangedListRequest(
        ListArrangement(
          orderBy: [OrderBy(field: PersonFields().name)],
          secondLineField: PersonFields().personType.redirectTo(
            PersonTypeFields().name,
          ),
        ),
      );

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        containsPair('personType', containsPair('name', 'أب')),
      ]);
    });

    test('reads it back when the list has no sort at all', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = arrangedListRequest(
        ListArrangement(
          orderBy: const [],
          secondLineField: PersonFields().jobDescription,
        ),
      );

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        containsPair('jobDescription', personRow['jobDescription']),
      ]);
    });

    test('also reads back the sort field when it differs from the second '
        'line', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = arrangedListRequest(
        ListArrangement(
          orderBy: [OrderBy(field: PersonFields().personType)],
          secondLineField: PersonFields().jobDescription,
        ),
      );

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        allOf(
          containsPair('jobDescription', personRow['jobDescription']),
          containsPair('personType', containsPair('order', 1)),
        ),
      ]);
    });
  });

  group('a persons list without a chosen second line', () {
    test('reads back the name of the primary sort field', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = sortedListRequest(PersonFields().personType);

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        containsPair('personType', containsPair('name', 'أب')),
      ]);
    });

    test('does not read back the job description', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = sortedListRequest(PersonFields().personType);

      writeAsServerAnswers(cache, listRequest);

      expect(cache.readQuery(listRequest)?['persons'], [
        isNot(contains('jobDescription')),
      ]);
    });

    test('selects nothing extra when there is no sort either', () {
      const document = documentNodeSubscriptionwatchAllPersons;

      final arranged = const ArrangedListDocument(
        document,
      ).arrangedBy(const ListArrangement(orderBy: []));

      expect(arranged, document);
    });
  });
}
