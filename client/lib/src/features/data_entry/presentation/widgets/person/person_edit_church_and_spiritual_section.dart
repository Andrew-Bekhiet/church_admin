import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonEditChurchAndSpiritualSection extends StatelessWidget {
  static const double personStateColorSwatchSize = 50;
  static const ShapeBorder personStateColorSwatchShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final PersonChurchAndSpiritualFormController form;
  final PersonMetadataCatalog metadata;
  final AdvancedFieldController<bool, PersonEditError> gender;

  const PersonEditChurchAndSpiritualSection({
    required this.form,
    required this.metadata,
    required this.gender,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([form.isServant, form.isShammas, gender]),
      builder: (context, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdvancedSingleObjectSelectionField<Church, PersonEditError>(
            field: form.church,
            label: 'الكنيسة',
            translateError: PersonEditError.messageOf,
            listController: metadata.churches,
            onCreateCustom: metadata.createChurch,
            previewBuilder: (church) => Text(church.name),
          ),
          AdvancedSingleObjectSelectionField<Father, PersonEditError>(
            field: form.father,
            label: 'أب الاعتراف',
            translateError: PersonEditError.messageOf,
            listController: metadata.fathers,
            onCreateCustom: metadata.createFather,
            previewBuilder: (father) => Text(father.name),
          ),
          AdvancedCheckboxTile<PersonEditError>(
            field: form.isServant,
            title: 'خادم؟',
          ),
          if (form.isServant.fieldValue) ...[
            AdvancedSingleObjectSelectionField<Church, PersonEditError>(
              field: form.servingChurch,
              label: 'الكنيسة التي يخدم بها',
              translateError: PersonEditError.messageOf,
              listController: metadata.churches,
              onCreateCustom: metadata.createChurch,
              previewBuilder: (church) => Text(church.name),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: AdvancedTextInput<PersonEditError>(
                field: form.serviceType,
                translateError: PersonEditError.messageOf,
                labelText: 'نوع الخدمة',
              ),
            ),
          ],
          if (gender.fieldValue) ...[
            AdvancedCheckboxTile<PersonEditError>(
              field: form.isShammas,
              title: 'شماس؟',
            ),
            if (form.isShammas.fieldValue)
              AdvancedSingleObjectSelectionField<ShammasLevel, PersonEditError>(
                field: form.shammasLevel,
                label: 'رتبة الشموسية',
                translateError: PersonEditError.messageOf,
                listController: metadata.shammasLevels,
                clearable: false,
                previewBuilder: (level) => Text(level.name),
              ),
          ],
          AdvancedSingleObjectSelectionField<PersonState, PersonEditError>(
            field: form.state,
            label: 'الحالة الروحية',
            translateError: PersonEditError.messageOf,
            listController: metadata.personStates,
            previewBuilder: (personState) => IgnorePointer(
              child: ViewableObjectWidget(
                personState,
                wrapInCard: false,
                isDense: true,
                forceShowSecondLine: false,
                trailing: switch (personState.color) {
                  final color? => DecoratedBox(
                    decoration: ShapeDecoration(
                      color: color,
                      shape: personStateColorSwatchShape,
                    ),
                    child: const SizedBox.square(
                      dimension: personStateColorSwatchSize,
                    ),
                  ),
                  null => null,
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
