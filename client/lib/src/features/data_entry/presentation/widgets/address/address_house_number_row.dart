import 'package:auto_size_text/auto_size_text.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class AddressHouseNumberRow extends StatelessWidget {
  final Address address;
  final bool enabled;
  final void Function(String?) onSubstreetNameChanged;
  final void Function(String?) onHouseCodeChanged;
  final int textResetToken;
  const AddressHouseNumberRow({
    required this.address,
    required this.enabled,
    required this.onSubstreetNameChanged,
    required this.onHouseCodeChanged,
    this.textResetToken = 0,
    super.key,
  });

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
              key: ValueKey(textResetToken),
              initialValue: address.substreetName,
              decoration: const InputDecoration(labelText: 'الشارع الفرعي'),
              enabled: enabled,
              onChanged: (value) =>
                  onSubstreetNameChanged(value.isEmpty ? null : value),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            key: AddressHouseNumberRowKeys.houseCode,
            flex: 2,
            child: TextFormField(
              key: ValueKey(textResetToken),
              initialValue: address.houseCode,
              decoration: const InputDecoration(
                label: AutoSizeText(
                  'رقم العمارة',
                  maxLines: 1,
                  minFontSize: 9,
                ),
                counterText: '',
                errorMaxLines: 2,
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
              onChanged: (value) => onHouseCodeChanged(switch (value.trim()) {
                '' => null,
                final houseCode => houseCode,
              }),
            ),
          ),
        ],
      ),
    );
  }
}

abstract final class AddressHouseNumberRowKeys {
  static const Key houseCode = ValueKey(
    'Address House Number Row House Code Key',
  );
}
