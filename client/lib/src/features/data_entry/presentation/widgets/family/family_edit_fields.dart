import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class FamilyEditFields extends StatelessWidget {
  final FamilyFormController form;
  final PersonMetadataCatalog metadata;
  final Future<Point?> Function(BuildContext) onChooseLocationOnMap;

  const FamilyEditFields({
    required this.form,
    required this.metadata,
    required this.onChooseLocationOnMap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AddressFormSection(
          form: form.address,
          onChooseLocationOnMap: onChooseLocationOnMap,
        ),
        const PhoneContactsEditor(),
        AdvancedSingleObjectSelectionField<Church, ObjectEditError>(
          field: form.church,
          label: 'الكنيسة',
          translateError: ObjectEditError.messageOf,
          listController: metadata.churches,
          onCreateCustom: metadata.createChurch,
          previewBuilder: (church) => Text(church.name),
        ),
        AdvancedDropdownField<MartialStatus, ObjectEditError>(
          field: form.status,
          label: 'الحالة الاجتماعية',
          options: MartialStatus.values,
          translateError: ObjectEditError.messageOf,
        ),
        ListenableBuilder(
          listenable: form.status,
          builder: (context, _) => form.isWidowed
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AdvancedTextInput<ObjectEditError>(
                    key: FamilyEditFieldsKeys.deceasedSpouseName,
                    field: form.deceasedSpouseName,
                    translateError: ObjectEditError.messageOf,
                    labelText: 'اسم المتوفي/ـة',
                  ),
                )
              : AdvancedDateField<ObjectEditError>(
                  field: form.marriageDate,
                  label: 'تاريخ الزواج',
                  translateError: ObjectEditError.messageOf,
                ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdvancedTextInput<ObjectEditError>(
            field: form.notes,
            translateError: ObjectEditError.messageOf,
            labelText: 'ملاحظات',
            textInputAction: TextInputAction.newline,
            maxLines: null,
          ),
        ),
        AdvancedColorField<ObjectEditError>(
          field: form.color,
          translateError: ObjectEditError.messageOf,
        ),
        const Divider(),
        BlocBuilder<FamilyRelativesCubit, FamilyRelativesLoadState>(
          builder: (context, loadState) => switch (loadState) {
            FamilyRelativesLoading() => const LinearProgressIndicator(),
            FamilyRelativesLoaded() ||
            FamilyRelativesFailedToLoad() => const SizedBox.shrink(),
          },
        ),
        AdvancedMultiObjectSelectionField<Family, ObjectEditError>(
          key: FamilyEditFieldsKeys.parents,
          field: form.parents,
          label: 'عائلات الأب والأم',
          translateError: ObjectEditError.messageOf,
          listController: form.familiesMatching,
          previewBuilder: ObjectSelectionPreviewList.new,
        ),
        AdvancedMultiObjectSelectionField<Family, ObjectEditError>(
          key: FamilyEditFieldsKeys.children,
          field: form.children,
          label: 'عائلات الأبناء',
          translateError: ObjectEditError.messageOf,
          listController: form.familiesMatching,
          previewBuilder: ObjectSelectionPreviewList.new,
        ),
        AdvancedDateField<ObjectEditError>(
          field: form.lastVisit,
          label: 'أخر افتقاد',
          clearable: false,
          withTime: true,
          translateError: ObjectEditError.messageOf,
        ),
        AdvancedDateField<ObjectEditError>(
          field: form.lastFatherVisit,
          label: 'أخر افتقاد للأب الكاهن',
          clearable: false,
          withTime: true,
          translateError: ObjectEditError.messageOf,
        ),
      ],
    );
  }
}

abstract final class FamilyEditFieldsKeys {
  static const Key deceasedSpouseName = ValueKey('Family Deceased Spouse Key');
  static const Key parents = ValueKey('Family Parents Field Key');
  static const Key children = ValueKey('Family Children Field Key');
}
