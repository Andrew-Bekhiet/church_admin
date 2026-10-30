import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/recording_graphql_link.dart';

void main() {
  const ownPhone = PhoneContact(
    id: '00000000-0000-0000-0000-00000000c001',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const fatherPhone = FamilyPhoneContact(
    contact: PhoneContact(
      id: '00000000-0000-0000-0000-00000000c002',
      phone: '+201002222222',
    ),
    role: PersonType(
      id: '00000000-0000-0000-0000-0000000000a1',
      name: 'الأب',
      isFamilyAdmin: true,
    ),
  );
  final mina = Person(
    id: '00000000-0000-0000-0000-000000000001',
    name: 'مينا',
    contacts: const [ownPhone],
    familyContacts: const [fatherPhone],
  );

  late BehaviorSubject<bool> connectivity;
  late RecordingGraphQLLink link;

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    connectivity = BehaviorSubject.seeded(true);
    link = RecordingGraphQLLink({
      'persons': [mina.toJson()],
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
    final persons = await dao().personsPhoneContacts(personsIds: [mina.id]);

    expect(persons.single.contacts, [ownPhone]);
    expect(persons.single.familyContacts, [fatherPhone]);
  });

  test('the query asks for exactly the selected persons', () async {
    await dao().personsPhoneContacts(personsIds: [mina.id]);

    expect(link.requests.single.variables['ids'], [mina.id]);
  });
}
