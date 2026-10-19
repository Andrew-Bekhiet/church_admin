import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import '../../../../fakes/ash_responses.dart';

void main() {
  const first = AshTestItem(id: 'a', name: 'أنبا أنطونيوس');
  const second = AshTestItem(id: 'b', name: 'أنبا بولا');

  test('the root field is the alias when the operation gives one', () {
    final document = gql(
      r'query q($id: ID!) { item: getTestItem(id: $id) { id } }',
    );

    expect(AshResultParser.rootFieldOf(document), 'item');
  });

  test('the root field is the field name without an alias', () {
    final document = gql('query q { testItems { results { id } } }');

    expect(AshResultParser.rootFieldOf(document), 'testItems');
  });

  test('a page carries its items, count and end keyset', () {
    const count = 42;
    const endKeyset = 'g3QAAAABZAACaWRtAAAAAWI=';
    final parser = AshResultParser(
      gql('query q { testItems { count endKeyset results { id name } } }'),
    );

    final page = parser.page(AshTestItem.fromJson)({
      'testItems': AshResponses.page(
        [first.toJson(), second.toJson()],
        count: count,
        endKeyset: endKeyset,
      ),
    });

    expect(page.items, [first, second]);
    expect(page.count, count);
    expect(page.endKeyset, endKeyset);
  });

  test('an entity is the root object', () {
    final parser = AshResultParser(
      gql(r'query q($id: ID!) { getTestItem(id: $id) { id name } }'),
    );

    expect(
      parser.entity(AshTestItem.fromJson)({'getTestItem': first.toJson()}),
      first,
    );
  });

  test('a missing entity is null', () {
    final parser = AshResultParser(
      gql(r'query q($id: ID!) { getTestItem(id: $id) { id name } }'),
    );

    expect(parser.entity(AshTestItem.fromJson)({'getTestItem': null}), isNull);
  });

  test('a mutation answers with the record under result', () {
    final parser = AshResultParser(
      gql(
        r'mutation m($input: CreateTestItemInput!) { createTestItem(input: $input) { result { id name } } }',
      ),
    );

    expect(
      parser.mutationResult(AshTestItem.fromJson)({
        'createTestItem': AshResponses.mutationResult(first.toJson()),
      }),
      first,
    );
  });

  test('a mutation without a result record answers null', () {
    final parser = AshResultParser(
      gql(
        r'mutation m($id: ID!) { destroyTestItem(id: $id) { result { id name } } }',
      ),
    );

    expect(
      parser.mutationResultOrNull(AshTestItem.fromJson)({
        'destroyTestItem': AshResponses.mutationResult(null),
      }),
      isNull,
    );
  });

  test('a generic action answers with the root value', () {
    const claimed = true;
    final parser = AshResultParser(gql('mutation m { tryClaimAccount }'));

    expect(
      parser.actionResult((value) => value! as bool)({
        'tryClaimAccount': claimed,
      }),
      claimed,
    );
  });
}
