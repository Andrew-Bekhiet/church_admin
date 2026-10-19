import 'dart:convert';

import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';

/// A person as the Ash server stores it: [person] is what the DAO shows,
/// [serverFields] the calculations and aggregates it filters and sorts on.
class PersonRow implements ToJson {
  final Person person;
  final Json serverFields;

  const PersonRow(this.person, {this.serverFields = const {}});

  static const _typenameOfField = {
    'classMemberships': 'ClassMembership',
    'groupMemberships': 'GroupMembership',
    'serviceMemberships': 'ServiceMembership',
    'class': 'Class',
    'group': 'Group',
    'service': 'Service',
    'tags': 'Tag',
    'hobbies': 'Hobby',
    'contacts': 'Contact',
    'familyContacts': 'FamilyContact',
    'personType': 'PersonType',
    'family': 'Family',
    'studyYear': 'StudyYear',
    'latestCall': 'LatestCall',
    'latestConfession': 'LatestConfession',
    'latestEdit': 'LatestEdit',
    'latestKodas': 'LatestKodas',
    'latestVisit': 'LatestVisit',
    'user': 'User',
    'address': 'Address',
  };

  @override
  Json toJson() => {
    ..._asServerObjects(
      (jsonDecode(jsonEncode(person.toJson())) as Map).cast<String, dynamic>(),
    ),
    ...serverFields,
  };

  static Json _asServerObjects(Json json) => {
    for (final MapEntry(:key, :value) in json.entries)
      key: switch (value) {
        final List list => [
          for (final item in list)
            if (item is Map)
              _asServerObject(item.cast(), _typenameOfField[key])
            else
              item,
        ],
        final Map object => _asServerObject(
          object.cast(),
          _typenameOfField[key],
        ),
        _ => value,
      },
  };

  static Json _asServerObject(Json object, String? typename) => {
    ..._asServerObjects(object),
    '__typename': ?typename,
    if (object['id'] == null)
      'id': ?switch (typename) {
        'StudyYear' => '${object['order']}',
        'User' => object['uid'],
        'LatestCall' ||
        'LatestConfession' ||
        'LatestEdit' ||
        'LatestKodas' ||
        'LatestVisit' => object['time'],
        _ => null,
      },
  };
}

/// A family contact as the server's resolved contacts hold it.
class FamilyContactRow implements ToJson, ID {
  final FamilyPhoneContact contact;
  final String familyId;

  @override
  String get id => contact.contact.id;

  const FamilyContactRow(this.contact, {required this.familyId});

  @override
  Json toJson() => {
    ...(jsonDecode(jsonEncode(contact.toJson())) as Map)
        .cast<String, dynamic>(),
    'familyId': familyId,
    'personTypeId': contact.role.id,
  };
}

abstract final class PersonFixtures {
  static const Family gergesFamily = Family(id: 'family-1', name: 'جرجس');
  static const Family hannaFamily = Family(id: 'family-2', name: 'حنا');

  static const PersonType father = PersonType(
    id: 'type-father',
    name: 'الأب',
    order: 1,
    isFamilyAdmin: true,
  );
  static const PersonType son = PersonType(
    id: 'type-son',
    name: 'الابن',
    order: 3,
  );

  static final StudyYear firstYear = StudyYear(name: 'أولى', order: 1);
  static final StudyYear thirdYear = StudyYear(name: 'ثالثة', order: 3);

  static const Service primary = Service(id: 'service-1', name: 'ابتدائي');
  static const Group choir = Group(id: 'group-1', name: 'كورال');
  static const Tag active = Tag(id: 'tag-1', name: 'نشيط');
  static const Hobby drawing = Hobby(id: 'hobby-1', name: 'الرسم');

  static const PhoneContact minaPhone = PhoneContact(
    id: 'contact-1',
    phone: '+201001111111',
    isMainPhone: true,
  );

  static const FamilyPhoneContact fatherPhone = FamilyPhoneContact(
    contact: PhoneContact(id: 'contact-2', phone: '+201002222222'),
    role: father,
  );

  static const FamilyPhoneContact otherFatherPhone = FamilyPhoneContact(
    contact: PhoneContact(id: 'contact-3', phone: '+201003333333'),
    role: father,
  );

  static final DateTime confessionDay = DateTime(2026, 9, 2);
  static final DateTime kodasDay = DateTime(2026, 9, 6);

  static final Person mina = Person(
    id: 'person-1',
    name: 'مينا جرجس',
    family: gergesFamily,
    familyId: gergesFamily.id,
    studyYear: thirdYear,
    personType: son,
    contacts: const [minaPhone],
    familyContacts: const [fatherPhone],
    services: const [primary],
    groups: const [choir],
    tags: const [active],
    hobbies: const [drawing],
  );

  static final Person beshoy = Person(
    id: 'person-2',
    name: 'بيشوي حنا',
    family: hannaFamily,
    familyId: hannaFamily.id,
    studyYear: firstYear,
    gender: false,
  );

  static final Person abanoub = Person(
    id: 'person-3',
    name: 'أبانوب جرجس',
    family: gergesFamily,
    familyId: gergesFamily.id,
    studyYear: firstYear,
  );

  static FakeAshTable personsTable({List<ToJson>? rows}) => FakeAshTable(
    typename: 'Person',
    listRoot: 'persons',
    projectsSelections: true,
    rows:
        rows ??
        [
          PersonRow(mina, serverFields: {'studyYearOrder': thirdYear.order}),
          PersonRow(beshoy, serverFields: {'studyYearOrder': firstYear.order}),
          PersonRow(
            abanoub,
            serverFields: {'studyYearOrder': firstYear.order},
          ),
        ],
  );

  static FakeAshTable familyContactsTable({
    List<FamilyContactRow> rows = const [],
  }) => FakeAshTable(
    typename: 'FamilyContact',
    listRoot: 'familyContacts',
    rows: rows,
  );
}
