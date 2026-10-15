import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonHouseholdFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _startingPerson;
  final bool isCreate;
  final FamiliesDAO _families;

  Address? _addressCarriedByPerson;
  Family? _familyBeforeLatestChange;

  late final family = AdvancedFieldController<Family?, PersonEditError>(
    initialValue: _startingPerson.family,
    validator: (family) => family == null && hasNoAddress
        ? (isCreate
              ? PersonEditError.familyOrAddressRequired
              : PersonEditError.familyRequired)
        : null,
  );
  late final AddressFormController address;

  bool get showsAddress => isCreate || family.fieldValue != null;

  bool get canEditFamilyAddress => switch (family.fieldValue) {
    null => isCreate,
    Family(:final id) => !isCreate && id == _startingPerson.family?.id,
  };

  bool get canHaveFamilyNumbers =>
      family.fieldValue != null || (isCreate && editedAddress != null);

  List<FamilyPhoneContact> get savedFamilyContacts =>
      !isCreate && family.fieldValue?.id == _startingPerson.family?.id
      ? _startingPerson.visibleFamilyContacts
      : const [];

  Address? get editedAddress => address.wasEditedSinceBaseline
      ? address.toAddress()
      : _addressCarriedByPerson;

  bool get hasNoAddress => switch (editedAddress) {
    null || const Address() => true,
    _ => false,
  };

  PersonHouseholdFormController({
    required Person startingPerson,
    required this.isCreate,
    required this._families,
    required AddressFormServices addressServices,
  }) : _startingPerson = startingPerson,
       _addressCarriedByPerson = startingPerson.address,
       _familyBeforeLatestChange = startingPerson.family,
       super(debugName: 'household') {
    address = AddressFormController(
      initialAddress: startingPerson.family?.address ?? startingPerson.address,
      services: addressServices,
      isRequired: () => family.fieldValue == null,
    );

    registerFields([family]);
    addSubform(address);
    addRelation(family, (family) => family, _followFamily);
    _updateAddressEditability();
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    family: family.fieldValue,
    familyId: family.fieldValue?.id,
    address: editedAddress,
  );

  ViewableObjectListController<Family> familyListController(
    Stream<String?> search,
  ) => ViewableObjectListController(
    objectsPaginatableStream: _families.streamAllWithAddresses(
      searchQuery: search,
    ),
  );

  void _followFamily(Family? chosen) {
    final backToStartingFamily = chosen?.id == _startingPerson.family?.id;

    _addressCarriedByPerson = switch ((backToStartingFamily, chosen)) {
      (true, _) => _startingPerson.address,
      (false, Family(:final address)) => address,
      (false, null) =>
        _familyBeforeLatestChange?.address ?? _addressCarriedByPerson,
    };
    _familyBeforeLatestChange = chosen;

    address.loadAsNewBaseline(chosen?.address ?? _addressCarriedByPerson);
    _updateAddressEditability();
  }

  void _updateAddressEditability() =>
      canEditFamilyAddress ? address.unmarkReadOnly() : address.markReadOnly();
}
