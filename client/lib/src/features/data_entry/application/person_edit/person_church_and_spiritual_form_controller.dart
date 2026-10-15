import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonChurchAndSpiritualFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;

  late final church = AdvancedFieldController<Church?, PersonEditError>(
    initialValue: _person.church,
  );
  late final father = AdvancedFieldController<Father?, PersonEditError>(
    initialValue: _person.father,
  );
  late final state = AdvancedFieldController<PersonState?, PersonEditError>(
    initialValue: _person.state,
  );
  late final isServant = AdvancedBooleanFieldController<PersonEditError>(
    initialValue: _person.isServant,
  );
  late final servingChurch = AdvancedFieldController<Church?, PersonEditError>(
    initialValue: _person.servingChurch,
  );
  late final serviceType = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.serviceType ?? '',
  );
  late final isShammas = AdvancedBooleanFieldController<PersonEditError>(
    initialValue: _person.isShammas,
  );
  late final shammasLevel =
      AdvancedFieldController<ShammasLevel?, PersonEditError>(
        initialValue: _person.shammasLevel,
        validator: (level) => level == null && isShammas.fieldValue
            ? PersonEditError.shammasLevelRequired
            : null,
      );

  PersonChurchAndSpiritualFormController({required this._person})
    : super(debugName: 'churchAndSpiritual') {
    registerFields([
      church,
      father,
      state,
      isServant,
      servingChurch,
      serviceType,
      isShammas,
      shammasLevel,
    ]);
    shammasLevel.subscribeToFields([isShammas]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    church: church.fieldValue,
    churchId: church.fieldValue?.id,
    father: father.fieldValue,
    fatherId: father.fieldValue?.id,
    state: state.fieldValue,
    stateId: state.fieldValue?.id,
    isServant: isServant.fieldValue,
    servingChurch: servingChurch.fieldValue,
    serviceType: PersonFormValues.optionalText(
      _person.serviceType,
      serviceType.fieldValue,
    ),
    isShammas: isShammas.fieldValue,
    shammasLevel: shammasLevel.fieldValue,
    shammasLevelId: shammasLevel.fieldValue?.id,
  );
}
