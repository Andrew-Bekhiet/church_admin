import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class AreaFormController extends ObjectFormController<Area> {
  late final bounds = AdvancedFieldController<Polygon?, ObjectEditError>(
    initialValue: startingObject.bounds,
  );
  late final lastVisit = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: startingObject.lastVisit?.time,
  );

  AreaFormController({
    required AreaEditIntent intent,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateArea(:final area) => area,
           CreateArea() => null,
         },
         startingObject: switch (intent) {
           UpdateArea(:final area) => area,
           final CreateArea create => create.draftArea(const Uuid().v4()),
         },
         debugName: 'area',
       ) {
    registerFields([photo, name, bounds, lastVisit, color]);
  }

  @override
  Area toObject() => startingObject.copyWith(
    name: editedName,
    bounds: bounds.fieldValue,
    lastVisit: recordedByMeIfDateChanged(lastVisit, startingObject.lastVisit),
    color: color.fieldValue,
  );
}
