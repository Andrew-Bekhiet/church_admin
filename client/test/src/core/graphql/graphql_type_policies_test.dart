import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';
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

    test('AuthUsersData normalizes under its uid, not an id', () {
      const request = Request(
        operation: Operation(document: documentNodeSubscriptionwatchAllUsers),
      );

      final data = Subscription_watchAllUsers(
        authUsersData: [
          Subscription_watchAllUsers_authUsersData(
            uid: stringToUuid(userUid),
            name: 'Nabil',
            email: 'nabil@example.com',
            permissions: [],
            adminOn: [],
          ),
        ],
      );

      cache.writeQuery(request, broadcast: false, data: data.toJson());

      const userKey = 'AuthUsersData:{"uid":"$userUid"}';
      expect(store.get(userKey), isNotNull);
      expect(store.get(userKey), containsPair('name', 'Nabil'));
    });

    test('StudyYears normalizes under its order key', () {
      final year = Fragment_StudyYear(order: 3, name: 'Third year');

      cache.writeFragment(
        FragmentRequest(
          fragment: const Fragment(document: documentNodeFragmentStudyYear),
          idFields: {'__typename': year.$__typename, 'order': year.order},
        ),
        broadcast: false,
        data: year.toJson(),
      );

      const yearKey = 'StudyYears:{"order":3}';
      expect(store.get(yearKey), isNotNull);
      expect(store.get(yearKey), containsPair('name', 'Third year'));
    });
  });
}
