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

  Json pageOf(List<Person> persons, {String? endKeyset}) => {
    'endKeyset': endKeyset,
    'results': [for (final person in persons) person.toJson()],
  };

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    connectivity = BehaviorSubject.seeded(true);
    link = RecordingGraphQLLink({
      'persons': pageOf([mina]),
    });
  });

  tearDown(() async {
    await connectivity.close();
    resetGlobalProviderContainer();
  });

  PersonsDAO dao([Link? answeringLink]) => PersonsDAO(
    db: DatabaseService(
      DBGraphQLClient(
        connectivityStream: connectivity,
        link: answeringLink ?? link,
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

    expect(
      link.requests.single.variables['filter'],
      Input_PersonFilterInput(
        id: Input_PersonFilterId($in: [mina.id]),
      ).toJson(),
    );
  });

  test('family phones are limited to the family admins', () async {
    await dao().personsPhoneContacts(personsIds: [mina.id]);

    expect(
      link.requests.single.variables['familyContactsFilter'],
      Input_FamilyContactFilterInput(
        personType: Input_PersonTypeFilterInput(
          isFamilyAdmin: Input_PersonTypeFilterIsFamilyAdmin(eq: true),
        ),
      ).toJson(),
    );
  });

  test('a phone changed on the server replaces the one read before', () async {
    Json cacheablePageOf(PhoneContact contact) => {
      '__typename': 'KeysetPageOfPerson',
      'endKeyset': null,
      'results': [
        {
          '__typename': 'Person',
          'id': mina.id,
          'name': mina.name,
          'contacts': [
            {'__typename': 'Contact', ...contact.toJson()},
          ],
          'familyContacts': const <Json>[],
        },
      ],
    };

    const changedPhone = PhoneContact(
      id: '00000000-0000-0000-0000-00000000c003',
      phone: '+201003333333',
    );
    final persons = dao();
    link.data['__typename'] = 'RootQueryType';
    link.data['persons'] = cacheablePageOf(ownPhone);
    await persons.personsPhoneContacts(personsIds: [mina.id]);
    link.data['persons'] = cacheablePageOf(changedPhone);

    final fetched = await persons.personsPhoneContacts(personsIds: [mina.id]);

    expect(fetched.single.contacts, [changedPhone]);
  });

  test('a selection larger than a page comes back whole', () async {
    final fullPage = [
      for (var i = 0; i < AshPagination.maxPageSize; i++)
        mina.copyWith(id: 'person-$i'),
    ];
    final lastPerson = mina.copyWith(id: 'last-person');
    final pages = _PagedPersonsLink({
      null: pageOf(fullPage, endKeyset: 'end-of-first-page'),
      'end-of-first-page': pageOf([lastPerson]),
    });

    final persons = await dao(pages).personsPhoneContacts(
      personsIds: [...fullPage, lastPerson].map((person) => person.id),
    );

    expect(persons.map((person) => person.id), [
      ...fullPage.map((person) => person.id),
      lastPerson.id,
    ]);
  });
}

class _PagedPersonsLink extends Link {
  final Map<String?, Json> pagesByCursor;

  _PagedPersonsLink(this.pagesByCursor);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) =>
      Stream.value(
        Response(
          data: {'persons': pagesByCursor[request.variables['after']]},
          response: const {},
        ),
      );
}
