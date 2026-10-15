import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddressFormUnitFields extends StatelessWidget {
  final AddressFormController form;

  const AddressFormUnitFields({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Expanded(
            flex: 3,
            child: AdvancedTextInput<AddressFieldError>(
              field: form.storeyNumber,
              translateError: AddressFieldError.messageOf,
              label: const AutoSizeText(
                'رقم الدور',
                maxLines: 1,
                minFontSize: 9,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          Expanded(
            flex: 3,
            child: AdvancedTextInput<AddressFieldError>(
              field: form.apartmentNumber,
              translateError: AddressFieldError.messageOf,
              label: const AutoSizeText(
                'رقم الشقة',
                maxLines: 1,
                minFontSize: 9,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          Expanded(
            flex: 5,
            child: AdvancedTextInput<AddressFieldError>(
              field: form.specialLandmark,
              translateError: AddressFieldError.messageOf,
              labelText: 'علامة مميزة',
            ),
          ),
        ],
      ),
    );
  }
}
