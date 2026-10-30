import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonMaritalStatusAndTypeFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;

  late final gender = AdvancedFieldController<Gender, PersonEditError>(
    initialValue: _person.gender,
  );
  late final martialStatus =
      AdvancedFieldController<MartialStatus?, PersonEditError>(
        initialValue: _person.martialStatus,
      );
  late final personType = AdvancedFieldController<PersonType?, PersonEditError>(
    initialValue: _person.personType,
  );

  PersonMaritalStatusAndTypeFormController({required this._person})
    : super(debugName: 'maritalStatusAndType') {
    registerFields([gender, martialStatus, personType]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    gender: gender.fieldValue,
    martialStatus: martialStatus.fieldValue,
    personType: personType.fieldValue,
    personTypeId: personType.fieldValue?.id,
  );
}
