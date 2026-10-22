import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_areas_dao.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const maadi = Area(id: 'maadi', name: 'المعادي');
  const storedStreet = Street(id: 'nile', name: 'شارع النيل', areas: [shubra]);

  StreetFormController controllerFor(StreetEditIntent intent) {
    final controller = StreetFormController(
      intent: intent,
      areasDAO: FakeAreasDAO(),
      currentUserId: 'me',
    );
    addTearDown(controller.dispose);

    return controller;
  }

  test('an untouched street is saved unchanged', () {
    final controller = controllerFor(const UpdateStreet(street: storedStreet));

    expect(controller.toObject(), storedStreet);
  });

  test('a street cannot be saved without an area', () async {
    final controller = controllerFor(const CreateBlankStreet());
    controller.name.setValue('شارع');

    expect(await controller.validate(), isFalse);
    expect(controller.areas.error, ObjectEditError.areaRequired);
  });

  test('a street created in an area can be saved once named', () async {
    final controller = controllerFor(const CreateStreetInArea(area: shubra));

    controller.name.setValue('شارع');

    expect(await controller.validate(), isTrue);
  });

  test('the chosen areas are saved', () {
    final controller = controllerFor(const UpdateStreet(street: storedStreet));

    controller.areas.setValue({shubra, maadi});

    expect(controller.toObject().areas, unorderedEquals([shubra, maadi]));
  });

  test('the line drawn on the map is saved', () {
    final controller = controllerFor(const UpdateStreet(street: storedStreet));
    const drawnLine = Line([Point(30, 31), Point(30.1, 31.1)]);

    controller.line.setValue(drawnLine);

    expect(controller.toObject().line, drawnLine);
  });
}
