import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class PersonEditMaritalStatusAndTypeSection extends StatelessWidget {
  final PersonMaritalStatusAndTypeFormController form;
  final PersonMetadataCatalog metadata;

  const PersonEditMaritalStatusAndTypeSection({
    required this.form,
    required this.metadata,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titleMedium = TextTheme.of(context).titleMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdvancedFieldBuilder<Gender, PersonEditError>(
            field: form.gender,
            builder: (context, state, _) => InputDecorator(
              decoration: InputDecoration(
                labelText: 'النوع',
                enabled: !state.readOnly,
              ),
              child: RadioGroup<Gender>(
                groupValue: state.value,
                onChanged: (gender) {
                  if (gender == null) return;

                  form.gender.setValue(gender);
                },
                child: Row(
                  children: [
                    for (final gender in [Gender.male, Gender.female])
                      Expanded(
                        child: Row(
                          children: [
                            Radio<Gender>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: gender,
                            ),
                            GestureDetector(
                              onTap: () => form.gender.setValue(gender),
                              child: Text(gender.label, style: titleMedium),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AdvancedFieldBuilder<MartialStatus?, PersonEditError>(
          field: form.martialStatus,
          builder: (context, state, _) => TappableInputField<MartialStatus?>(
            value: state.value,
            isEmpty: false,
            focusNode: form.martialStatus.focusNode,
            decoration: const InputDecoration(labelText: 'الحالة الاجتماعية'),
            onTap: state.readOnly ? null : () => _selectMartialStatus(context),
            child: Text((state.value ?? MartialStatus.single).label),
          ),
        ),
        AdvancedSingleObjectSelectionField<PersonType, PersonEditError>(
          field: form.personType,
          label: 'نوع الفرد في العائلة',
          translateError: PersonEditError.messageOf,
          listController: metadata.personTypes,
          onCreateCustom: metadata.createPersonType,
          previewBuilder: (personType) => Text(personType.name),
        ),
      ],
    );
  }

  Future<void> _selectMartialStatus(BuildContext context) async {
    final result =
        await showDialog<
          ObjectSelectionResult<ViewableEnumWithID<MartialStatus>>
        >(
          context: context,
          builder: (context) =>
              ObjectSelectionDialog<ViewableEnumWithID<MartialStatus>>(
                fieldLabel: 'الحالة الاجتماعية',
                canCreateFromSearch: false,
                listController: (search) => ViewableObjectListController(
                  objectsPaginatableStream:
                      ViewableEnumWithID.createPaginatableStream(
                        MartialStatus.values,
                        search,
                      ),
                ),
              ),
        );

    if (form.isDisposed) return;

    switch (result) {
      case null || NewObjectNamed():
        return;

      case ObjectSelected(:final object):
        form.martialStatus.setValue(object.enumValue);
    }
  }
}
