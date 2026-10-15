import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdvancedDropdownField<T extends LabeledEnum, E extends Object>
    extends StatelessWidget {
  final AdvancedFieldController<T?, E> field;
  final String label;
  final List<T> options;
  final ErrorTranslator<E> translateError;

  const AdvancedDropdownField({
    required this.field,
    required this.label,
    required this.options,
    required this.translateError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<T?, E>(
      field: field,
      builder: (context, state, _) {
        final error = state.error;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: InputDecorator(
            isEmpty: state.value == null,
            decoration: InputDecoration(
              labelText: label,
              enabled: !state.readOnly,
              errorText: error == null ? null : translateError(error),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                value: state.value,
                focusNode: field.focusNode,
                isExpanded: true,
                isDense: true,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                onChanged: state.readOnly ? null : field.setValue,
                items: [
                  for (final option in options)
                    DropdownMenuItem(value: option, child: Text(option.label)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
