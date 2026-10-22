import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class StreetFormController extends ObjectFormController<Street> {
  final AreasDAO _areasDAO;

  late final line = AdvancedFieldController<Line?, ObjectEditError>(
    initialValue: initialDraft.line,
  );
  late final areas = AdvancedFieldController<Set<Area>, ObjectEditError>(
    initialValue: initialDraft.areas?.toSet() ?? const {},
    validator: (areas) => areas.isEmpty ? ObjectEditError.areaRequired : null,
  );
  late final lastVisit = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: initialDraft.lastVisit?.time,
  );

  StreetFormController({
    required StreetEditIntent intent,
    required this._areasDAO,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateStreet(:final street) => street,
           CreateStreet() => null,
         },
         initialDraft: switch (intent) {
           UpdateStreet(:final street) => street,
           final CreateStreet create => create.draftStreet(const Uuid().v4()),
         },
         debugName: 'street',
       ) {
    registerFields([photo, name, line, areas, lastVisit, color]);
  }

  ViewableObjectListController<Area> areasMatching(Stream<String?> search) =>
      ViewableObjectListController(
        objectsPaginatableStream: _areasDAO.streamAll(searchQuery: search),
      );

  @override
  Street toObject() => initialDraft.copyWith(
    name: editedName,
    line: line.fieldValue,
    areas: PersonFormValues.listOf(initialDraft.areas, areas.fieldValue),
    lastVisit: recordedByMeIfDateChanged(lastVisit, initialDraft.lastVisit),
    color: color.fieldValue,
  );
}
