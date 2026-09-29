import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Person =>', () {
    test(
      'spiritDataUpToDate_whenRecordedDatesExceedConfiguredAge_returnsFalse',
      () {
        final now = DateTime(2026, 9, 9);
        final person = Person(
          id: 'person-id',
          name: 'الخادم',
          lastConfession: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 31)),
          ),
          lastKodas: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 30)),
          ),
        );

        expect(
          person.spiritDataUpToDate(
            maxAge: const Duration(days: 30),
            now: now,
          ),
          isFalse,
        );
      },
    );

    group('contacts with family admins', () {
      const familyId = '00000000-0000-4000-8000-000000000002';
      const fatherType = PersonType(
        id: '00000000-0000-4000-8000-000000000003',
        name: 'أب',
        isFamilyAdmin: true,
      );
      const own = PhoneContact(
        id: 'own',
        phone: '+201001234567',
        personId: 'person-id',
      );
      const dadsNumber = PhoneContact(
        id: 'dad',
        phone: '+201112223334',
        personId: 'dad-id',
        personTypeId: 'father',
        personType: fatherType,
      );
      const family = Family(
        id: familyId,
        name: 'عائلة',
        contacts: [dadsNumber],
      );

      test('a child lists their own numbers then the family admins', () {
        final child = Person(
          id: 'person-id',
          name: 'مينا',
          contacts: const [own],
          family: family,
        );

        expect(child.contactsWithFamilyAdmins, [own, dadsNumber]);
      });

      test('a family admin sees only their own numbers', () {
        final dad = Person(
          id: 'dad-id',
          name: 'الأب',
          contacts: const [dadsNumber],
          personType: fatherType,
          family: family,
        );

        expect(dad.contactsWithFamilyAdmins, [dadsNumber]);
      });
    });
  });
}
