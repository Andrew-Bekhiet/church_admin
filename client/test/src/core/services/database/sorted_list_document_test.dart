import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/subscriptions.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'graphql_response_projector.dart';

void main() {
  const personId = '11111111-1111-1111-1111-111111111111';
  const personTypeId = '22222222-2222-2222-2222-222222222222';

  const personRow = {
    '__typename': 'Persons',
    'id': personId,
    'name': 'مينا',
    'personType': {
      '__typename': 'PersonTypes',
      'id': personTypeId,
      'name': 'أب',
      'order': 1,
    },
  };

  const detailRequest = Request(
    operation: Operation(document: documentNodeSubscriptionwatchPerson),
    variables: {'id': personId},
  );

  Request sortedListRequest(FieldMetadata sortField) => Request(
    operation: Operation(
      document: const SortedListDocument(
        documentNodeSubscriptionwatchAllPersons,
      ).sortedBy([OrderBy(field: sortField)]),
    ),
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
}
