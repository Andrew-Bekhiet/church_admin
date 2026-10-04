import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'father-number', phone: '+201003333333'),
    role: PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true),
  );

  test('a number inserted along with its new family leaves the family to the '
      'parent insert', () {
    expect(fatherNumber.toInsertInput().toJson(), isNot(contains('familyId')));
  });

  test('a number added to an existing family names that family', () {
    final familyId = 'the-family'.toUuid();

    expect(
      fatherNumber.toInsertInput(familyId: 'the-family').toJson(),
      containsPair('familyId', familyId.toString()),
    );
  });
}
