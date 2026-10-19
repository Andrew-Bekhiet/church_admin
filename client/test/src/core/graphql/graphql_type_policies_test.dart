import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/fragments.graphql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

void main() {
  group('GqlTypePolicies', () {
    const userUid = '33333333-3333-3333-3333-333333333333';

    late InMemoryStore store;
    late GraphQLCache cache;

    setUp(() {
      store = InMemoryStore();
      cache = GraphQLCache(
        store: store,
        typePolicies: GqlTypePolicies.policies,
      );
    });

    test('a User normalizes under its uid, not an id', () {
      final request = Request(
        operation: Operation(
          document: gql('{ users { __typename uid name } }'),
        ),
      );

      final data = {
        '__typename': 'Query',
        'users': [
          {'__typename': 'User', 'uid': userUid, 'name': 'Nabil'},
        ],
      };

      cache.writeQuery(request, broadcast: false, data: data);

      const userKey = 'User:{"uid":"$userUid"}';
      expect(store.get(userKey), isNotNull);
      expect(store.get(userKey), containsPair('name', 'Nabil'));
    });

    test('a StudyYear normalizes under its order key', () {
      final year = Fragment_StudyYear(id: '3', order: 3, name: 'Third year');

      cache.writeFragment(
        FragmentRequest(
          fragment: const Fragment(document: documentNodeFragmentStudyYear),
          idFields: {'__typename': year.$__typename, 'order': year.order},
        ),
        broadcast: false,
        data: year.toJson(),
      );

      const yearKey = 'StudyYear:{"order":3}';
      expect(store.get(yearKey), isNotNull);
      expect(store.get(yearKey), containsPair('name', year.name));
    });
  });
}
