import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class _MockDatabaseService extends Mock implements DatabaseService {}

class _RecordingLink extends Link {
  final String createdFamilyId;
  final List<Request> requests = [];

  _RecordingLink({required this.createdFamilyId});

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);

    return Stream.value(
      Response(
        data: switch (request.operation.operationName) {
          'insertPerson' => {
            'insertPersonsOne': {
              'id': request.variables['newPerson']['id'] ?? _personId,
              'name': 'مينا جرجس',
              'familyId': createdFamilyId,
            },
          },
          _ => {
            'insertContacts': {'affectedRows': 1},
          },
        },
        response: const {},
      ),
    );
  }

  Map<String, dynamic> get savedContacts => requests
      .firstWhere((r) => r.operation.operationName == 'saveContacts')
      .variables;

  Map<String, dynamic> get insertedPerson => requests
      .firstWhere((r) => r.operation.operationName == 'insertPerson')
      .variables['newPerson'];

  static const _personId = '00000000-0000-4000-8000-000000000001';
}

void main() {
  const personId = '00000000-0000-4000-8000-000000000001';
  const knownFamilyId = '00000000-0000-4000-8000-0000000000f1';
  const createdFamilyId = '00000000-0000-4000-8000-0000000000f2';
  const fatherType = PersonType(
    id: '00000000-0000-4000-8000-0000000000a1',
    name: 'أب',
    isFamilyAdmin: true,
  );

  late _RecordingLink link;
  late PersonsDAO dao;

  setUp(() {
    link = _RecordingLink(createdFamilyId: createdFamilyId);
    final db = _MockDatabaseService();
    when(() => db.varsTransformer).thenReturn(const DBVarsTransformer());
    when(() => db.parser).thenReturn(const GQLParser());
    when(() => db.graphQLClient).thenReturn(
      DBGraphQLClient(
        connectivityStream: BehaviorSubject.seeded(true),
        link: link,
        cache: GraphQLCache(),
      ),
    );
    dao = PersonsDAO(db: db);
  });

  List<Map<String, dynamic>> upserts() =>
      (link.savedContacts['upserts'] as List).cast<Map<String, dynamic>>();

  test(
    'a new person with a father number and no address creates the family '
    'and files the number under it',
    () async {
      final fatherNumber = PhoneContact.create(
        phone: '+201001234567',
      ).withRole(fatherType, null);
      final person = Person(
        id: personId,
        name: 'مينا جرجس',
        contacts: [fatherNumber],
      );

      await dao.createObject(newObject: person);

      expect(link.insertedPerson['family'], isNotNull);
      expect(upserts().single['familyId'], createdFamilyId);
      expect(upserts().single['personTypeId'], fatherType.id);
    },
  );

  test(
    'a new person with only their own number does not create a family',
    () async {
      final person = Person(
        id: personId,
        name: 'مينا جرجس',
        contacts: [
          PhoneContact.create(phone: '+201001234567', personId: personId),
        ],
      );

      await dao.createObject(newObject: person);

      expect(link.insertedPerson['family'], isNull);
    },
  );

  test(
    "a new person in a family already saves the father's number once",
    () async {
      const fathersNumber = PhoneContact(
        id: '00000000-0000-4000-8000-0000000000b1',
        phone: '+201112223334',
        personId: '00000000-0000-4000-8000-0000000000d1',
        personType: fatherType,
        personTypeId: 'father',
      );
      final person = Person(
        id: personId,
        name: 'مينا جرجس',
        familyId: knownFamilyId,
        family: const Family(
          id: knownFamilyId,
          name: 'جرجس',
          contacts: [fathersNumber],
        ),
        contacts: [
          PhoneContact.create(phone: '+201001234567', personId: personId),
          fathersNumber,
        ],
      );

      await dao.createObject(newObject: person);

      expect(upserts().map((u) => u['phone']), ['+201001234567']);
    },
  );
}
