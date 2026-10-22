import 'package:church_admin/church_admin.dart';
import 'package:flutter/painting.dart' show Color;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const recorderId = 'me';
  final visit = LastRecordedByInfo(
    time: DateTime(2026),
    recordedBy: 'someone-else',
  );
  final storedArea = Area(id: 'shubra', name: 'شبرا', lastVisit: visit);

  AreaFormController controllerFor(AreaEditIntent intent) {
    final controller = AreaFormController(
      intent: intent,
      recordedByUserId: recorderId,
    );
    addTearDown(controller.dispose);

    return controller;
  }

  test('an untouched area is saved unchanged', () {
    final controller = controllerFor(UpdateArea(area: storedArea));

    expect(controller.toObject(), storedArea);
  });

  test('a new area cannot be saved without a name', () async {
    final controller = controllerFor(const CreateBlankArea());

    expect(await controller.validate(), isFalse);
    expect(controller.name.error, ObjectEditError.nameRequired);
  });

  test('the entered name is saved without surrounding spaces', () {
    final controller = controllerFor(const CreateBlankArea());

    controller.name.setValue('  المعادي ');

    expect(controller.toObject().name, 'المعادي');
  });

  test('the bounds drawn on the map are saved', () {
    final controller = controllerFor(UpdateArea(area: storedArea));
    const drawn = Polygon([Point(30, 31), Point(30.1, 31), Point(30, 31.1)]);

    controller.bounds.setValue(drawn);

    expect(controller.toObject().bounds, drawn);
  });

  group('the last visit', () {
    test('is recorded by the current user when its date changes', () {
      final controller = controllerFor(UpdateArea(area: storedArea));
      final newDate = DateTime(2026, 5, 3);

      controller.lastVisit.setValue(newDate);

      expect(
        controller.toObject().lastVisit,
        LastRecordedByInfo(time: newDate, recordedBy: recorderId),
      );
    });

    test('keeps the stored visit when cleared', () {
      final controller = controllerFor(UpdateArea(area: storedArea));

      controller.lastVisit.setValue(null);

      expect(controller.toObject().lastVisit, visit);
    });
  });

  test('the chosen color is saved', () {
    final controller = controllerFor(UpdateArea(area: storedArea));
    const chosen = Color(0xFF00FF00);

    controller.color.setValue(chosen);

    expect(controller.toObject().color, chosen);
  });

  test('editing a field marks the form as modified', () {
    final controller = controllerFor(UpdateArea(area: storedArea));

    controller.name.setValue('شبرا الخيمة');

    expect(controller.wasModified, isTrue);
  });
}
