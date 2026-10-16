import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedSearchLimitField extends StatelessWidget {
  final void Function(int?) onChangeLimit;
  final Stream<int?> limitStream;
  const AdvancedSearchLimitField({
    required this.onChangeLimit,
    required this.limitStream,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int?>(
      stream: limitStream,
      builder: (context, limitData) {
        if (limitData.hasData) {
          return TextFormField(
            initialValue: limitData.data?.toString(),
            decoration: InputDecoration(
              labelText: 'الحد الأقصى',
              suffixIcon: IconButton(
                onPressed: () => onChangeLimit(null),
                icon: const Icon(Symbols.clear),
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (v) => onChangeLimit(int.tryParse(v)),
          );
        }

        return ElevatedButton.icon(
          onPressed: () => onChangeLimit(100),
          icon: const Icon(Symbols.maximize),
          label: const Text('إضافة حد أقصى'),
        );
      },
    );
  }
}
