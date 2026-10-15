import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/painting.dart';

class PersonHobbiesTagsAndNotesFormController extends AdvancedFormController
    implements PersonFormSection {
  final Person _person;

  late final hobbies = AdvancedFieldController<Set<Hobby>, PersonEditError>(
    initialValue: _person.hobbies?.toSet() ?? const {},
  );
  late final tags = AdvancedFieldController<Set<Tag>, PersonEditError>(
    initialValue: _person.tags?.toSet() ?? const {},
  );
  late final notes = AdvancedTextFieldController<PersonEditError>(
    initialValue: _person.notes ?? '',
  );
  late final color = AdvancedFieldController<Color?, PersonEditError>(
    initialValue: _person.color,
  );

  PersonHobbiesTagsAndNotesFormController({required this._person})
    : super(debugName: 'hobbiesTagsAndNotes') {
    registerFields([hobbies, tags, notes, color]);
  }

  @override
  Person editedVersionOf(Person person) => person.copyWith(
    hobbies: PersonFormValues.listOf(_person.hobbies, hobbies.fieldValue),
    tags: PersonFormValues.listOf(_person.tags, tags.fieldValue),
    notes: PersonFormValues.optionalText(_person.notes, notes.fieldValue),
    color: color.fieldValue,
  );
}
