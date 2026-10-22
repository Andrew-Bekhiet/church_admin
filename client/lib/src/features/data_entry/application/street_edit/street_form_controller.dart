import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class StreetFormController extends ObjectFormController<Street> {
  final AreasDAO _areas;

  late final line = AdvancedFieldController<Line?, ObjectEditError>(
    initialValue: startingObject.line,
  );
  late final areas = AdvancedFieldController<Set<Area>, ObjectEditError>(
    initialValue: startingObject.areas?.toSet() ?? const {},
    validator: (areas) => areas.isEmpty ? ObjectEditError.areaRequired : null,
  );
  late final lastVisit = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: startingObject.lastVisit?.time,
  );

  StreetFormController({
    required StreetEditIntent intent,
    required this._areas,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateStreet(:final street) => street,
           CreateStreet() => null,
         },
         startingObject: switch (intent) {
           UpdateStreet(:final street) => street,
           final CreateStreet create => create.draftStreet(const Uuid().v4()),
         },
         debugName: 'street',
       ) {
    registerFields([photo, name, line, areas, lastVisit, color]);
  }

  ViewableObjectListController<Area> areasMatching(Stream<String?> search) =>
      ViewableObjectListController(
        objectsPaginatableStream: _areas.streamAll(searchQuery: search),
      );

  @override
  Street toObject() => startingObject.copyWith(
    name: editedName,
    line: line.fieldValue,
    areas: PersonFormValues.listOf(startingObject.areas, areas.fieldValue),
    lastVisit: recordedByMeIfDateChanged(lastVisit, startingObject.lastVisit),
    color: color.fieldValue,
  );
}
