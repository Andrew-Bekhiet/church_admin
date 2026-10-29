import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/recording_graphql_link.dart';

void main() {
  const personId = '00000000-0000-0000-0000-000000000001';
  const fatherTypeId = '00000000-0000-0000-0000-0000000000a1';

  late BehaviorSubject<bool> connectivity;
  late RecordingGraphQLLink link;

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    connectivity = BehaviorSubject.seeded(true);
    link = RecordingGraphQLLink({
      'persons': [
        {
          '__typename': 'Persons',
          'id': personId,
          'name': 'مينا',
          'contacts': [
            {
              '__typename': 'Contacts',
              'id': '00000000-0000-0000-0000-00000000c001',
              'label': null,
              'phone': '+201001111111',
              'isMainPhone': true,
            },
          ],
          'familyContacts': [
            {
              '__typename': 'ResolvedContacts',
              'id': '00000000-0000-0000-0000-00000000c002',
              'personId': null,
              'label': null,
              'phone': '+201002222222',
              'isMainPhone': false,
              'personType': {
                '__typename': 'PersonTypes',
                'id': fatherTypeId,
                'name': 'الأب',
                'isFamilyAdmin': true,
              },
            },
          ],
        },
      ],
    });
  });

  tearDown(() async {
    await connectivity.close();
    resetGlobalProviderContainer();
  });

  PersonsDAO dao() => PersonsDAO(
    db: DatabaseService(
      DBGraphQLClient(
        connectivityStream: connectivity,
        link: link,
        cache: GraphQLCache(),
        autoChangeFetchPolicy: false,
      ),
    ),
  );

  test("fetched persons carry their own and their family's phones", () async {
    final person = (await dao().personsPhoneContacts(
      personsIds: [personId],
    ))?.single;

    expect(person?.contacts.map((contact) => contact.phone), [
      '+201001111111',
    ]);
    expect(
      person?.familyContacts.map((contact) => contact.contact.phone),
      ['+201002222222'],
    );
  });

  test('the query asks for exactly the selected persons', () async {
    await dao().personsPhoneContacts(personsIds: [personId]);

    expect(link.requests.single.variables['ids'], [personId]);
  });

  test('the query keeps only persons whose id is among the selected', () async {
    await dao().personsPhoneContacts(personsIds: [personId]);

    expect(
      printNode(link.requests.single.operation.document),
      contains(r'persons(where: {id: {_in: $ids}})'),
    );
  });
}
