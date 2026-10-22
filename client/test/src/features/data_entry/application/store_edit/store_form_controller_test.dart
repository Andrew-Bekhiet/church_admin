import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_address_form_services.dart';
import '../../../../fakes/in_memory_families_dao.dart';

void main() {
  const family = Family(id: 'family', name: 'عائلة');
  const placedAddress = Address(
    id: 'address',
    area: Area(id: 'shubra', name: 'شبرا'),
    street: Street(id: 'nile', name: 'شارع النيل'),
  );
  const storedStore = Store(
    id: 'store',
    name: 'محل',
    address: placedAddress,
    family: family,
    familyId: 'family',
  );

  StoreFormController controllerFor(StoreEditIntent intent) {
    final controller = StoreFormController(
      intent: intent,
      familiesDAO: InMemoryFamiliesDAO(),
      addressServices: FakeAddressFormServices.withNothingToSuggest(),
      currentUserId: 'me',
    );
    addTearDown(() {
      if (!controller.isDisposed) controller.dispose();
    });

    return controller;
  }

  test('an untouched store is saved unchanged', () {
    expect(
      controllerFor(const UpdateStore(store: storedStore)).toObject(),
      storedStore,
    );
  });

  test('a store with neither a family nor a location is refused', () async {
    final controller = controllerFor(
      const UpdateStore(store: storedStore),
    );

    controller.family.setValue(null);

    expect(await controller.validate(), isFalse);
    expect(controller.family.error, ObjectEditError.familyOrLocationRequired);
  });

  test('a located store needs no family', () async {
    final controller = controllerFor(const UpdateStore(store: storedStore));
    controller.family.setValue(null);

    controller.address.geolocation.setValue(const Point(30, 31));

    expect(await controller.validate(), isTrue);
  });

  test('the chosen family is saved as responsible for the store', () {
    final controller = controllerFor(const CreateBlankStore());
    const other = Family(id: 'other', name: 'أخرى');

    controller.family.setValue(other);

    expect(controller.toObject().familyId, other.id);
  });
}
