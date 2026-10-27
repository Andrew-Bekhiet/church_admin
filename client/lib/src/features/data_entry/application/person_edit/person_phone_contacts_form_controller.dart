import 'package:church_admin/church_admin.dart';

class PersonPhoneContactsFormController extends PhoneContactsFormController
    implements PersonFormSection {
  PersonPhoneContactsFormController({
    required bool Function() canHaveFamilyNumbers,
    required super.own,
    required super.family,
  }) : super(canHaveFamilyNumbers: canHaveFamilyNumbers);

  @override
  Person editedVersionOf(Person person) =>
      person.copyWith(contacts: ownContacts, familyContacts: familyContacts);
}
