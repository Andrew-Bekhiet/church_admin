import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final codec = ChurchAdminRouterExtraCodec();

  PersonEditIntent roundTrip(PersonEditIntent intent) {
    final wire = jsonDecode(jsonEncode(codec.encode(intent))) as List;

    return switch (codec.decode(wire)) {
      final PersonEditIntent intent => intent,
      final other => throw StateError('Decoded $other'),
    };
  }

  final studyYear = StudyYear(order: 3, name: 'Third Primary');
  const service = Service(id: 'service-1', name: 'Primary');
  const family = Family(id: 'family-1', name: 'Family');
  const street = Street(id: 'street-1', name: 'Street');
  const area = Area(id: 'area-1', name: 'Area');
  const sampleGroup = Group(id: 'group-1', name: 'Group', service: service);
  final class$ = Class(
    id: 'class-1',
    name: 'Class',
    service: service,
    studyYear: studyYear,
    serviceGender: false,
  );

  group('PersonEditIntent router extra', () {
    test('an update intent survives the codec with its person', () {
      final person = Person(
        id: 'person-1',
        name: 'Mina',
        family: family,
        studyYear: studyYear,
      );

      final restored = roundTrip(UpdatePerson(person: person));

      expect(restored, isA<UpdatePerson>());
      expect((restored as UpdatePerson).person, person);
    });

    test('a blank create intent survives the codec', () {
      expect(roundTrip(const CreateBlankPerson()), isA<CreateBlankPerson>());
    });

    test('each create intent survives the codec with its subject', () {
      final restored = [
        roundTrip(const CreatePersonInFamily(family: family)),
        roundTrip(const CreatePersonOnStreet(street: street)),
        roundTrip(const CreatePersonInArea(area: area)),
        roundTrip(const CreatePersonInService(service: service)),
        roundTrip(const CreatePersonInGroup(group: sampleGroup)),
        roundTrip(CreatePersonInClass(class$: class$)),
      ];

      expect(
        restored.map((intent) => intent.runtimeType),
        [
          CreatePersonInFamily,
          CreatePersonOnStreet,
          CreatePersonInArea,
          CreatePersonInService,
          CreatePersonInGroup,
          CreatePersonInClass,
        ],
      );
      expect((restored[0] as CreatePersonInFamily).family, family);
      expect((restored[1] as CreatePersonOnStreet).street, street);
      expect((restored[2] as CreatePersonInArea).area, area);
      expect((restored[3] as CreatePersonInService).service, service);
      expect((restored[4] as CreatePersonInGroup).group, sampleGroup);
      expect((restored[5] as CreatePersonInClass).class$, class$);
    });
  });

  group('PersonEditIntent decoding', () {
    test('a known kind without a subject is rejected as a format error', () {
      expect(
        () => PersonEditIntent.fromJson(const {'kind': UpdatePerson.kind}),
        throwsFormatException,
      );
    });
  });

  group('UpdatePerson', () {
    test('exposes the person with every relation id filled', () {
      final person = UpdatePerson(
        person: Person(
          id: 'person-1',
          name: 'Mina',
          family: family,
          studyYear: studyYear,
        ),
      ).personWithRelationIds;

      expect(person.familyId, family.id);
      expect(person.studyYearId, studyYear.order);
    });

    test(
      'keeps the relation ids of a person whose related objects are not loaded',
      () {
        final person = UpdatePerson(
          person: Person(
            id: 'person-1',
            name: 'Mina',
            familyId: 'family-1',
            churchId: 'church-1',
            studyYearId: 3,
          ),
        ).personWithRelationIds;

        expect(person.familyId, 'family-1');
        expect(person.churchId, 'church-1');
        expect(person.studyYearId, 3);
      },
    );
  });

  group('CreatePerson draft', () {
    test('a blank intent drafts an unplaced employed person', () {
      final person = const CreateBlankPerson().draftPerson('new');

      expect(person.id, 'new');
      expect(person.family, isNull);
      expect(person.services, isEmpty);
      expect(person.groups, isEmpty);
      expect(person.workStatus, WorkStatus.employed);
      expect(person.gender, isTrue);
    });

    test('a family intent drafts a member of that family', () {
      final person = const CreatePersonInFamily(
        family: family,
      ).draftPerson('new');

      expect(person.family, family);
      expect(person.familyId, family.id);
    });

    test('a street intent drafts an address on that street', () {
      final person = const CreatePersonOnStreet(
        street: street,
      ).draftPerson('new');

      expect(person.address, const Address(street: street));
    });

    test('an area intent drafts an address in that area', () {
      final person = const CreatePersonInArea(area: area).draftPerson('new');

      expect(person.address, const Address(area: area));
    });

    test('a service intent drafts membership in that service only', () {
      final person = const CreatePersonInService(
        service: service,
      ).draftPerson('new');

      expect(person.services, [service]);
      expect(person.groups, isEmpty);
    });

    test('a group intent drafts membership in the group and its service', () {
      final person = const CreatePersonInGroup(
        group: sampleGroup,
      ).draftPerson('new');

      expect(person.groups, [sampleGroup]);
      expect(person.services?.map((s) => s.id), [service.id]);
      expect(person.services?.single.groups, [sampleGroup]);
    });

    test('a class intent drafts a student of the class study year', () {
      final person = CreatePersonInClass(class$: class$).draftPerson('new');

      expect(person.studyYear, studyYear);
      expect(person.studyYearId, studyYear.order);
      expect(person.workStatus, WorkStatus.student);
      expect(person.services, [service]);
    });

    test('a class intent drafts the gender the class serves', () {
      final person = CreatePersonInClass(class$: class$).draftPerson('new');

      expect(person.gender, isFalse);
    });
  });
}
