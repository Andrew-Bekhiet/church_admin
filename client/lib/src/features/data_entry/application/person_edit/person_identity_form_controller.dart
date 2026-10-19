import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonIdentityFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;

  late final name = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.name,
    validator: filled(PersonEditError.nameRequired),
  );
  late final birthdate = AdvancedFieldController<DateTime?, PersonEditError>(
    initialValue: _person.birthdate,
  );

  PersonIdentityFormController({required this._person})
    : super(debugName: 'identity') {
    registerFields([name, birthdate]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    name: PersonFormValues.text(_person.name, name.fieldValue),
    birthdate: birthdate.fieldValue,
  );
}
