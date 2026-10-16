import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';

class AddressApartmentDetailsRow extends StatelessWidget {
  const AddressApartmentDetailsRow({
    required this.address,
    required this.enabled,
    required this.onStoreyNumberChanged,
    required this.onApartmentNumberChanged,
    required this.onSpecialLandmarkChanged,
    this.textResetToken = 0,
    super.key,
  });

  final Address address;
  final bool enabled;
  final void Function(int) onStoreyNumberChanged;
  final void Function(int) onApartmentNumberChanged;
  final void Function(String?) onSpecialLandmarkChanged;
  final int textResetToken;

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
            child: TextFormField(
              key: ValueKey(textResetToken),
              initialValue: address.storeyNumber?.toString(),
              decoration: const InputDecoration(
                label: AutoSizeText('رقم الدور', maxLines: 1, minFontSize: 9),
              ),
              enabled: enabled,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.singleLineFormatter,
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) =>
                  value != null &&
                      value.isNotEmpty &&
                      int.tryParse(value) == null
                  ? 'برجاء ادخال رقم صحيح'
                  : null,
              onChanged: (value) {
                final storeyNumber = int.tryParse(value);
                if (storeyNumber == null) {
                  return;
                }

                onStoreyNumberChanged(storeyNumber);
              },
            ),
          ),
          Expanded(
            key: AddressApartmentDetailsRowKeys.apartmentNumber,
            flex: 3,
            child: TextFormField(
              key: ValueKey(textResetToken),
              initialValue: address.apartmentNumber?.toString(),
              decoration: const InputDecoration(
                label: AutoSizeText('رقم الشقة', maxLines: 1, minFontSize: 9),
              ),
              enabled: enabled,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.singleLineFormatter,
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) =>
                  value != null &&
                      value.isNotEmpty &&
                      int.tryParse(value) == null
                  ? 'برجاء ادخال رقم صحيح'
                  : null,
              onChanged: (value) {
                final apartmentNumber = int.tryParse(value);
                if (apartmentNumber == null) {
                  return;
                }

                onApartmentNumberChanged(apartmentNumber);
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              key: ValueKey(textResetToken),
              initialValue: address.specialLandmark,
              decoration: const InputDecoration(labelText: 'علامة مميزة'),
              enabled: enabled,
              onChanged: (value) =>
                  onSpecialLandmarkChanged(value.isEmpty ? null : value),
            ),
          ),
        ],
      ),
    );
  }
}

abstract final class AddressApartmentDetailsRowKeys {
  static const Key apartmentNumber = ValueKey(
    'Address Apartment Details Row Apartment Number Key',
  );
}
