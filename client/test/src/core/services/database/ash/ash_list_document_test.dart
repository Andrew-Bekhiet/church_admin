import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';

import '../../../../fakes/ash_responses.dart';

void main() {
  const listSource = '''
    query persons { persons { count endKeyset results { id name } } }
  ''';

  String printed(String document) => printNode(parseString(document));

  test('a chosen second line is selected on each page result', () {
    final document =
        ArrangedListDocument(
          parseString(listSource),
        ).arrangedBy(
          ListArrangement(
            orderBy: const [],
            secondLineField: PersonFields().jobDescription,
          ),
        );

    expect(
      printNode(document),
      printed('''
        query persons { persons { count endKeyset results { id name jobDescription } } }
      '''),
    );
  });

  test('a sort adds no sort key to a page the server sorts', () {
    final document =
        ArrangedListDocument(
          parseString(listSource),
        ).arrangedBy(
          ListArrangement(
            orderBy: [OrderBy(field: PersonFields().personType)],
            secondLineField: PersonFields().jobDescription,
          ),
        );

    expect(
      printNode(document),
      printed('''
        query persons { persons { count endKeyset results { id name jobDescription } } }
      '''),
    );
  });

  test('data checks are removed from inside page results', () {
    expect(
      printNode(
        DataCheckSelectionRemover.removeFrom(
          parseString('''
            query persons { persons { count results { id dataCheck { percentage } } } }
          '''),
        ),
      ),
      printed('query persons { persons { count results { id } } }'),
    );
  });

  test('a page is stored inside its query, not as an entity of its own', () {
    final cache = GraphQLCache(
      store: InMemoryStore(),
      typePolicies: GqlTypePolicies.policies,
    );
    const item = AshTestItem(id: 'mina', name: 'مينا');
    final request = Request(
      operation: Operation(
        document: gql(
          'query testItems { testItems { count endKeyset results { id name } } }',
        ),
      ),
    );

    cache.writeQuery(
      request,
      broadcast: false,
      data: {
        '__typename': 'Query',
        'testItems': AshResponses.page([item.toJson()]),
      },
    );

    expect(
      cache.store.toMap().keys,
      unorderedEquals(['Query', '${AshTestItem.typename}:${item.id}']),
    );
    expect(
      AshResultParser(request.operation.document)
          .page(AshTestItem.fromJson)(cache.readQuery(request)!)
          .items,
      [item],
    );
  });
}
