import 'package:church_admin/church_admin.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart' show XFile;

import 'person_form_controller_fixture.dart';

void main() {
  const shubraAddress = Address(
    area: PersonFormControllerFixture.shubra,
    street: PersonFormControllerFixture.nileStreet,
  );
  const family = Family(id: 'f', name: 'عائلة', address: shubraAddress);
  final studyYear = StudyYear(order: 14, name: 'الفرقة الأولى');
  final recordedByOtherServant = LastRecordedByInfo(
    time: DateTime(2026, 3),
    recordedBy: 'other',
  );
  final fullPerson = Person(
    id: 'p',
    name: 'مينا',
    nationalId: 29901011234567,
    birthdate: DateTime(1999),
    family: family,
    address: shubraAddress,
    workStatus: WorkStatus.student,
    studyYear: studyYear,
    college: const College(id: 'college', name: 'هندسة'),
    job: const Job(id: 'job', name: 'مهندس'),
    jobDescription: 'برمجة',
    gender: Gender.female,
    personType: const PersonType(id: 'type', name: 'ابن'),
    church: const Church(id: 'church', name: 'مارجرجس'),
    father: const Father(id: 'father', name: 'أبونا'),
    isServant: true,
    servingChurch: const Church(id: 'serving', name: 'العذراء'),
    serviceType: 'مدرس',
    notes: 'ملاحظة',
    color: const Color(0xFF112233),
    lastKodas: recordedByOtherServant,
    services: const [PersonFormControllerFixture.primary],
    contacts: const [PhoneContact(id: 'phone', phone: '0100')],
  );

  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'father-number', phone: '+201003333333'),
    role: father,
    personId: 'the-father',
  );
  final personWithFamilyNumber = fullPerson.copyWith(
    familyContacts: const [fatherNumber],
  );

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  group('a person nobody edited', () {
    test('comes back exactly as it was given', () async {
      final controller = await fixture.controllerOfLoadedUpdate(fullPerson);

      expect(
        controller.toPerson(),
        UpdatePerson(person: fullPerson).personWithRelationIds,
      );
    });

    test('keeps an unset list unset', () async {
      final controller = await fixture.controllerOfLoadedUpdate(
        Person(id: 'p', name: 'مينا', address: shubraAddress),
      );

      expect(controller.toPerson().hobbies, isNull);
      expect(controller.toPerson().tags, isNull);
    });

    test('is not modified right after construction', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      expect(controller.wasModified, isFalse);
    });

    test('is not modified after its memberships finish loading', () async {
      final controller = await fixture.controllerOfLoadedUpdate(
        fullPerson,
        saved: Person(
          id: 'p',
          name: 'مينا',
          services: const [PersonFormControllerFixture.kindergarten],
        ),
      );

      expect(controller.wasModified, isFalse);
    });

    test('is not modified for a new person either', () {
      final controller = fixture.controllerFor(
        const CreatePersonInFamily(family: family),
      );

      expect(controller.wasModified, isFalse);
    });
  });

  group('wasModified', () {
    test('turns true when a field is edited', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.identity.name.setValue('مينا جرجس');

      expect(controller.wasModified, isTrue);
    });

    test('turns true when an address field is edited', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.household.address.houseCode.setValue('77');

      expect(controller.wasModified, isTrue);
    });

    test('turns true when the photo is replaced', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.photo.setValue(ReplacePhoto(XFile('/photos/new.jpg')));

      expect(controller.wasModified, isTrue);
    });

    test('turns true when the photo is deleted', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.photo.setValue(const DeletePhoto());

      expect(controller.wasModified, isTrue);
    });

    test('turns false again when the edit is undone', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      controller.identity.name.setValue('مينا جرجس');

      controller.identity.name.setValue('مينا');

      expect(controller.wasModified, isFalse);
    });
  });

  group('edited fields', () {
    test('are trimmed names', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.identity.name.setValue('  مينا جرجس ');

      expect(controller.toPerson().name, 'مينا جرجس');
    });

    test('carry the national id as a number', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.identity.nationalId.setValue('29801011234567');

      expect(controller.toPerson().nationalId, 29801011234567);
    });

    test('carry the relation id along with the chosen object', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      const newJob = Job(id: 'new-job', name: 'طبيب');

      controller.work.job.setValue(newJob);

      expect(controller.toPerson().job, newJob);
      expect(controller.toPerson().jobId, newJob.id);
    });

    test('carry the study year order as its id', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.work.studyYear.setValue(StudyYear(order: 15, name: 'الثانية'));

      expect(controller.toPerson().studyYearId, 15);
    });

    test('carry the chosen hobbies as a list', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      const hobby = Hobby(id: 'chess', name: 'شطرنج');

      controller.hobbiesTagsAndNotes.hobbies.setValue({hobby});

      expect(controller.toPerson().hobbies, [hobby]);
    });

    test('carry the chosen family together with its address', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      const otherFamily = Family(
        id: 'other',
        name: 'أخرى',
        address: Address(area: PersonFormControllerFixture.maadi),
      );

      controller.household.family.setValue(otherFamily);

      expect(controller.toPerson().family, otherFamily);
      expect(controller.toPerson().familyId, 'other');
      expect(controller.toPerson().address, otherFamily.address);
    });

    test('carry the edited address of the family', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.household.address.houseCode.setValue('77');

      expect(controller.toPerson().address?.houseCode, '77');
    });

    test('carry the selected services and groups', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      const group = Group(id: 'g', name: 'مجموعة');

      controller.memberships.selectServices({
        PersonFormControllerFixture.kindergarten.copyWith(groups: [group]),
      });

      expect(controller.toPerson().services, [
        PersonFormControllerFixture.kindergarten.copyWith(groups: [group]),
      ]);
      expect(controller.toPerson().groups, [
        group.copyWith(
          service: PersonFormControllerFixture.kindergarten.copyWith(
            groups: [group],
          ),
        ),
      ]);
    });
  });

  group('phone contacts', () {
    test('are the ones in the phone contacts form', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      const phone = '+201112345678';

      controller.phones.add(const FreePhoneContactLabel(null));
      controller.phones.contacts.fieldValue.last.phone.setValue(phone);

      expect(controller.toPerson().contacts.map((contact) => contact.phone), [
        ...fullPerson.contacts.map((contact) => contact.phone),
        phone,
      ]);
    });

    test('keep only the own numbers left in the form', () {
      final controller = fixture.controllerOfUpdate(personWithFamilyNumber);

      controller.phones.remove(controller.phones.contacts.fieldValue.first);

      expect(controller.toPerson().contacts, isEmpty);
    });

    test('give the family numbers as edited in the form', () {
      final controller = fixture.controllerOfUpdate(personWithFamilyNumber);

      controller.phones.contacts.fieldValue.last.phone.setValue('01007777777');

      expect(controller.toPerson().familyContacts, [
        fatherNumber.copyWith(
          contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
        ),
      ]);
    });
  });

  group('pastoral dates', () {
    test('are recorded by the current user when edited', () {
      final controller = fixture.controllerOfUpdate(fullPerson);
      final confession = DateTime(2026, 5, 5);

      controller.pastoralDates.lastConfession.setValue(confession);

      expect(controller.toPerson().lastConfession?.time, confession);
      expect(controller.toPerson().lastConfession?.recordedBy, 'me');
    });

    test('keep who recorded them when left alone', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      expect(controller.toPerson().lastKodas?.recordedBy, 'other');
    });

    test('keep the saved record when the date is cleared', () {
      final controller = fixture.controllerOfUpdate(fullPerson);

      controller.pastoralDates.lastKodas.setValue(null);

      expect(controller.toPerson().lastKodas, recordedByOtherServant);
    });
  });

  group('gender', () {
    test('choosing female clears shammas', () {
      final controller = fixture.controllerOfUpdate(
        fullPerson.copyWith(gender: Gender.male, isShammas: true),
      );

      controller.maritalStatusAndType.gender.setValue(Gender.female);

      expect(controller.churchAndSpiritual.isShammas.fieldValue, isFalse);
      expect(controller.toPerson().isShammas, isFalse);
    });

    test('choosing male leaves shammas alone', () {
      final controller = fixture.controllerOfUpdate(
        fullPerson.copyWith(gender: Gender.female, isShammas: false),
      );

      controller.maritalStatusAndType.gender.setValue(Gender.male);
      controller.churchAndSpiritual.isShammas.setValue(true);

      expect(controller.toPerson().isShammas, isTrue);
    });

    test('shammas needs a level', () async {
      final controller = fixture.controllerOfUpdate(
        fullPerson.copyWith(gender: Gender.male, isShammas: false),
      );
      controller.churchAndSpiritual.isShammas.setValue(true);

      await controller.validate();

      expect(
        controller.churchAndSpiritual.shammasLevel.value.error,
        PersonEditError.shammasLevelRequired,
      );
    });
  });

  group('field validation', () {
    test('rejects a blank name', () async {
      final controller = fixture.controllerOfUpdate(fullPerson);
      controller.identity.name.setValue('  ');

      await controller.validate();

      expect(
        controller.identity.name.value.error,
        PersonEditError.nameRequired,
      );
    });

    test('rejects a national id that is too small', () async {
      final controller = fixture.controllerOfUpdate(fullPerson);
      controller.identity.nationalId.setValue('123');

      await controller.validate();

      expect(
        controller.identity.nationalId.value.error,
        PersonEditError.invalidNationalId,
      );
    });
  });
}
