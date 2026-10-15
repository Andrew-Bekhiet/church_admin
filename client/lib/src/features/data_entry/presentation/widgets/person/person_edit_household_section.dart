import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PersonEditHouseholdSection extends StatelessWidget {
  final PersonHouseholdFormController form;
  final ValueListenable<Set<PersonRuleViolation>> violations;
  final Future<Point?> Function(BuildContext) onChooseLocationOnMap;

  const PersonEditHouseholdSection({
    required this.form,
    required this.violations,
    required this.onChooseLocationOnMap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListenableBuilder(
          listenable: form.family,
          builder: (context, _) => switch (form.showsAddress) {
            true => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AddressFormSection(
                  form: form.address,
                  label: 'عنوان وموقع العائلة',
                  onChooseLocationOnMap: onChooseLocationOnMap,
                ),
                PersonRuleViolationMessages(
                  violations: violations,
                  section: PersonRuleViolationSection.household,
                ),
              ],
            ),
            false => const SizedBox.shrink(),
          },
        ),
        AdvancedSingleObjectSelectionField<Family, PersonEditError>(
          field: form.family,
          label: 'العائلة',
          translateError: PersonEditError.messageOf,
          listController: form.familyListController,
          errorMaxLines: 2,
          clearable: form.isCreate,
          previewBuilder: ObjectSelectionPreview.new,
        ),
      ],
    );
  }
}
