import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class AddressFormPlaceFields extends StatelessWidget {
  final AddressFormController form;

  const AddressFormPlaceFields({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    final keyboardThatCanSwitchToLetters = switch (Theme.of(
      context,
    ).platform) {
      TargetPlatform.iOS => const TextInputType.numberWithOptions(signed: true),
      _ => TextInputType.text,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdvancedSingleObjectSelectionField<District, AddressFieldError>(
          key: AddressFormPlaceFieldsKeys.district,
          field: form.district,
          label: 'الحي',
          translateError: AddressFieldError.messageOf,
          listController: form.districtListController,
          onCreateCustom: form.createDistrictNamed,
          previewBuilder: (district) => Text(district.name),
        ),
        AdvancedSingleObjectSelectionField<Street, AddressFieldError>(
          key: AddressFormPlaceFieldsKeys.street,
          field: form.street,
          label: 'الشارع الرئيسي',
          translateError: AddressFieldError.messageOf,
          listController: form.streetListController,
          onChanged: form.chooseStreet,
          previewBuilder: (street) => Text(street.name),
        ),
        AdvancedSingleObjectSelectionField<Area, AddressFieldError>(
          key: AddressFormPlaceFieldsKeys.area,
          field: form.area,
          label: 'المنطقة',
          translateError: AddressFieldError.messageOf,
          listController: form.areaListController,
          previewBuilder: (area) => Text(area.name),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Expanded(
                flex: 3,
                child: AdvancedTextInput<AddressFieldError>(
                  field: form.substreetName,
                  translateError: AddressFieldError.messageOf,
                  labelText: 'الشارع الفرعي',
                ),
              ),
              Expanded(
                key: AddressFormPlaceFieldsKeys.houseCode,
                flex: 2,
                child: AdvancedTextInput<AddressFieldError>(
                  field: form.houseCode,
                  translateError: AddressFieldError.messageOf,
                  label: const AutoSizeText(
                    'رقم العمارة',
                    maxLines: 1,
                    minFontSize: 9,
                  ),
                  keyboardType: keyboardThatCanSwitchToLetters,
                  maxLength: Address.houseCodeMaxLength,
                  counterText: '',
                  errorMaxLines: 2,
                  onChanged: form.houseCodeTyped,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

abstract final class AddressFormPlaceFieldsKeys {
  static const Key district = ValueKey('Address Form District Field Key');
  static const Key street = ValueKey('Address Form Street Field Key');
  static const Key area = ValueKey('Address Form Area Field Key');
  static const Key houseCode = ValueKey('Address Form House Code Key');
}
