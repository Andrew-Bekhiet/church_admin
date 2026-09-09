import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddressHouseNumberRow extends StatelessWidget {
  const AddressHouseNumberRow({
    required this.address,
    required this.enabled,
    required this.onSubstreetNameChanged,
    required this.onHouseNumberChanged,
    super.key,
  });

  final Address address;
  final bool enabled;
  final void Function(String?) onSubstreetNameChanged;
  final void Function(int?) onHouseNumberChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: TextFormField(
              key: ValueKey(address.substreetName),
              initialValue: address.substreetName,
              decoration: const InputDecoration(labelText: 'الشارع الفرعي'),
              enabled: enabled,
              onChanged: (value) =>
                  onSubstreetNameChanged(value.isEmpty ? null : value),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: TextFormField(
              key: ValueKey(address.houseNumber),
              initialValue: address.houseNumber?.toString(),
              decoration: const InputDecoration(
                label: AutoSizeText(
                  'رقم العمارة',
                  maxLines: 1,
                  minFontSize: 9,
                ),
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
              onChanged: (value) => onHouseNumberChanged(int.tryParse(value)),
            ),
          ),
        ],
      ),
    );
  }
}
