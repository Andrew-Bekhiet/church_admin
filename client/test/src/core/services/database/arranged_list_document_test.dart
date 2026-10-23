import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/queries.graphql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'graphql_response_projector.dart';

void main() {
  const personId = '11111111-1111-1111-1111-111111111111';
  const personTypeId = '22222222-2222-2222-2222-222222222222';
  const mainPhone = '01000000000';

  const personRow = {
    '__typename': 'Person',
    'id': personId,
    'name': 'مينا',
    'jobDescription': 'مهندس',
    'personType': {
      '__typename': 'PersonType',
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
    operation: Operation(document: documentNodeQueryperson),
    variables: {'id': personId},
  );

  Request arrangedListRequest(ListArrangement arrangement) => Request(
    operation: Operation(
      document: const ArrangedListDocument(
        documentNodeQuerypersons,
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

  Object? listedPersons(GraphQLCache cache, Request request) =>
      (cache.readQuery(request)?['persons'] as Map?)?['results'];

  void writeAsServerAnswers(GraphQLCache cache, Request request) {
    cache.writeQuery(
      request,
      broadcast: false,
      data: GraphQLResponseProjector(request.operation.document).respond({
        'person': personRow,
        'persons': {
          '__typename': 'KeysetPageOfPerson',
          'count': 1,
          'endKeyset': personId,
          'results': [personRow],
        },
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

        expect(listedPersons(cache, listRequest), [
          containsPair('personType', containsPair('name', 'أب')),
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

        final storedPersonType = store.get('Person:$personId')?['personType'];
        expect(
          storedPersonType,
          anyOf(
            equals({r'$ref': 'PersonType:$personTypeId'}),
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

    final persons = listedPersons(cache, listRequest) as List;
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

      expect(listedPersons(cache, listRequest), [
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

      expect(listedPersons(cache, listRequest), [
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

      expect(listedPersons(cache, listRequest), [
        containsPair('jobDescription', personRow['jobDescription']),
      ]);
    });
  });

  group('a persons list without a chosen second line', () {
    test('reads back the name of the primary sort field', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = sortedListRequest(PersonFields().personType);

      writeAsServerAnswers(cache, listRequest);

      expect(listedPersons(cache, listRequest), [
        containsPair('personType', containsPair('name', 'أب')),
      ]);
    });

    test('does not read back the job description', () {
      final cache = cacheWithAppTypePolicies();
      final listRequest = sortedListRequest(PersonFields().personType);

      writeAsServerAnswers(cache, listRequest);

      expect(listedPersons(cache, listRequest), [
        isNot(contains('jobDescription')),
      ]);
    });

    test('selects nothing extra when there is no sort either', () {
      const document = documentNodeQuerypersons;

      final arranged = const ArrangedListDocument(
        document,
      ).arrangedBy(const ListArrangement(orderBy: []));

      expect(arranged, document);
    });
  });
}
