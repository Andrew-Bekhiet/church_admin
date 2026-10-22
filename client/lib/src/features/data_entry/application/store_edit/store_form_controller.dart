import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class StoreFormController extends ObjectFormController<Store> {
  final FamiliesDAO _families;

  late final AddressFormController address;
  late final family = AdvancedFieldController<Family?, ObjectEditError>(
    initialValue: startingObject.family,
    validator: (family) =>
        family == null && address.geolocation.fieldValue == null
        ? ObjectEditError.familyOrLocationRequired
        : null,
  );

  StoreFormController({
    required StoreEditIntent intent,
    required this._families,
    required AddressFormServices addressServices,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateStore(:final store) => store,
           CreateStore() => null,
         },
         startingObject: switch (intent) {
           UpdateStore(:final store) => store,
           final CreateStore create => create.draftStore(const Uuid().v4()),
         },
         debugName: 'store',
       ) {
    address = AddressFormController(
      initialAddress: startingObject.address,
      services: addressServices,
      isRequired: () => true,
    );
    registerFields([photo, name, family, color]);
    addSubform(address);
    family.subscribeToFields([address.geolocation]);
  }

  ViewableObjectListController<Family> familiesMatching(
    Stream<String?> search,
  ) => SearchableDaoListController.over(_families)(search);

  @override
  Store toObject() => startingObject.copyWith(
    name: editedName,
    address: address.toAddress(),
    family: family.fieldValue,
    familyId: family.fieldValue?.id,
    color: color.fieldValue,
  );
}
