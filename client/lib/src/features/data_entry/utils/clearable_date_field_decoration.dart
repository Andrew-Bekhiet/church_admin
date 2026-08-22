import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ClearableDateFieldDecoration {
  static InputDecoration build<T extends Object>({
    required String label,
    required bool nullable,
    required InputDecoration? decoration,
    required FormFieldState<T?> state,
    required void Function(T?)? onChanged,
  }) {
    final inputDecoration = InputDecoration(
      labelText: label,
      errorText: state.errorText,
      suffixIcon: nullable && state.value != null
          ? IconButton(
              icon: const Icon(Symbols.delete),
              tooltip: 'حذف التاريخ',
              onPressed: () {
                state.didChange(null);
                onChanged?.call(null);
              },
            )
          : null,
    );

    return decoration?.copyWith(
          errorText: inputDecoration.errorText,
          suffixIcon: inputDecoration.suffixIcon,
        ) ??
        inputDecoration;
  }
}
