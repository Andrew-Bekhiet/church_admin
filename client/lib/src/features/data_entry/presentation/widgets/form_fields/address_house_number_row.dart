import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AddressHouseNumberRow extends StatelessWidget {
  const AddressHouseNumberRow({
    required this.address,
    required this.enabled,
    required this.onSubstreetNameChanged,
    required this.onHouseCodeChanged,
    super.key,
  });

  final Address address;
  final bool enabled;
  final void Function(String?) onSubstreetNameChanged;
  final void Function(String?) onHouseCodeChanged;

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
              key: ValueKey(address.houseCode),
              initialValue: address.houseCode,
              decoration: const InputDecoration(
                label: AutoSizeText(
                  'رقم العمارة',
                  maxLines: 1,
                  minFontSize: 9,
                ),
              ),
              enabled: enabled,
              // Android has no keyboard that opens on digits and can still
              // switch to letters; iOS's numbers-and-punctuation one can.
              keyboardType: switch (Theme.of(context).platform) {
                TargetPlatform.iOS => const TextInputType.numberWithOptions(
                  signed: true,
                ),
                _ => TextInputType.text,
              },
              maxLength: Address.houseCodeMaxLength,
              onChanged: (value) =>
                  onHouseCodeChanged(value.isEmpty ? null : value),
            ),
          ),
        ],
      ),
    );
  }
}
