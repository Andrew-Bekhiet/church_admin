import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonEditHobbiesTagsAndNotesSection extends StatelessWidget {
  final PersonHobbiesTagsAndNotesFormController form;
  final AdvancedFieldController<Color?, PersonEditError> color;
  final PersonMetadataCatalog metadata;

  const PersonEditHobbiesTagsAndNotesSection({
    required this.form,
    required this.color,
    required this.metadata,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdvancedMultiObjectSelectionField<Hobby, PersonEditError>(
          field: form.hobbies,
          label: 'الهوايات',
          translateError: PersonEditError.messageOf,
          listController: metadata.hobbies,
          onCreateCustom: metadata.createHobby,
          previewBuilder: (hobbies) => ColoredObjectChips(
            objects: hobbies,
            emptyText: 'لا يوجد هوايات',
          ),
        ),
        AdvancedMultiObjectSelectionField<Tag, PersonEditError>(
          field: form.tags,
          label: 'الشارات',
          translateError: PersonEditError.messageOf,
          listController: metadata.tags,
          onCreateCustom: metadata.createTag,
          previewBuilder: (tags) =>
              ColoredObjectChips(objects: tags, emptyText: 'لا يوجد شارات'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdvancedTextInput<PersonEditError>(
            field: form.notes,
            translateError: PersonEditError.messageOf,
            labelText: 'ملاحظات',
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
        AdvancedColorField<PersonEditError>(
          field: color,
          translateError: PersonEditError.messageOf,
        ),
      ],
    );
  }
}
