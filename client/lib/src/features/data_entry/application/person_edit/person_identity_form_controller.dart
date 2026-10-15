import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonIdentityFormController extends AdvancedFormController
    implements PersonFormSection {
  static const int smallestValidNationalId = 20000000000000;

  static PersonEditError? _invalidNationalId(String value) =>
      value.isNotEmpty && (int.tryParse(value) ?? 0) < smallestValidNationalId
      ? PersonEditError.invalidNationalId
      : null;

  final Person _person;

  late final name = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.name,
    validator: filled(PersonEditError.nameRequired),
  );
  late final nationalId = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.nationalId?.toString() ?? '',
    validator: _invalidNationalId,
  );
  late final birthdate = AdvancedFieldController<DateTime?, PersonEditError>(
    initialValue: _person.birthdate,
  );

  PersonIdentityFormController({required this._person})
    : super(debugName: 'identity') {
    registerFields([name, nationalId, birthdate]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    name: PersonFormValues.text(_person.name, name.fieldValue),
    nationalId: int.tryParse(nationalId.fieldValue),
    birthdate: birthdate.fieldValue,
  );
}
