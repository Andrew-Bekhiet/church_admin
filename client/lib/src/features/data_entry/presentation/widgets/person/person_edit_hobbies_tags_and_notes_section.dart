import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonEditHobbiesTagsAndNotesSection extends StatelessWidget {
  final PersonHobbiesTagsAndNotesFormController form;

  const PersonEditHobbiesTagsAndNotesSection({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = DatabaseService.I.metadata;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdvancedMultiObjectSelectionField<Hobby, PersonEditError>(
          field: form.hobbies,
          label: 'الهوايات',
          translateError: PersonEditError.messageOf,
          listController: SearchableDaoListController.over(metadata.hobbies),
          onCreateCustom: MetadataQuickCreate.hobby,
          previewBuilder: (hobbies) => ColoredObjectChips(
            objects: hobbies,
            emptyText: 'لا يوجد هوايات',
          ),
        ),
        AdvancedMultiObjectSelectionField<Tag, PersonEditError>(
          field: form.tags,
          label: 'الشارات',
          translateError: PersonEditError.messageOf,
          listController: SearchableDaoListController.over(metadata.tags),
          onCreateCustom: MetadataQuickCreate.tag,
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
          field: form.color,
          translateError: PersonEditError.messageOf,
        ),
      ],
    );
  }
}
