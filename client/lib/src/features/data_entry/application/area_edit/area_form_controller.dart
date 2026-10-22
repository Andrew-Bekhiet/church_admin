import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class AreaFormController extends ObjectFormController<Area> {
  late final bounds = AdvancedFieldController<Polygon?, ObjectEditError>(
    initialValue: initialDraft.bounds,
  );
  late final lastVisit = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: initialDraft.lastVisit?.time,
  );

  AreaFormController({
    required AreaEditIntent intent,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateArea(:final area) => area,
           CreateArea() => null,
         },
         initialDraft: switch (intent) {
           UpdateArea(:final area) => area,
           final CreateArea create => create.draftArea(const Uuid().v4()),
         },
         debugName: 'area',
       ) {
    registerFields([photo, name, bounds, lastVisit, color]);
  }

  @override
  Area toObject() => initialDraft.copyWith(
    name: editedName,
    bounds: bounds.fieldValue,
    lastVisit: recordedByMeIfDateChanged(lastVisit, initialDraft.lastVisit),
    color: color.fieldValue,
  );
}
