import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PersonPastoralDatesFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;
  final String? _recordedByUserId;

  late final lastKodas = AdvancedFieldController<DateTime?, PersonEditError>(
    initialValue: _person.lastKodas?.time,
  );
  late final lastConfession =
      AdvancedFieldController<DateTime?, PersonEditError>(
        initialValue: _person.lastConfession?.time,
      );
  late final lastVisit = AdvancedFieldController<DateTime?, PersonEditError>(
    initialValue: _person.lastVisit?.time,
  );
  late final lastCall = AdvancedFieldController<DateTime?, PersonEditError>(
    initialValue: _person.lastCall?.time,
  );

  PersonPastoralDatesFormController({
    required this._person,
    required this._recordedByUserId,
  }) : super(debugName: 'pastoralDates') {
    registerFields([lastKodas, lastConfession, lastVisit, lastCall]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    lastKodas: _recorded(lastKodas, _person.lastKodas),
    lastConfession: _recorded(lastConfession, _person.lastConfession),
    lastVisit: _recorded(lastVisit, _person.lastVisit),
    lastCall: _recorded(lastCall, _person.lastCall),
  );

  LastRecordedByInfo? _recorded(
    AdvancedFieldController<DateTime?, PersonEditError> field,
    LastRecordedByInfo? original,
  ) => switch (field.fieldValue) {
    final date? when date != original?.time => LastRecordedByInfo(
      time: date,
      recordedBy: _recordedByUserId,
    ),
    _ => original,
  };
}
