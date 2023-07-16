import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final String? initialValue;
  final void Function(String) onValueChanged;
  final EdgeInsetsGeometry? padding;

  const NameField({
    required this.initialValue,
    required this.onValueChanged,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final field = TextFormField(
      key: ValueKey(initialValue),
      decoration: const InputDecoration(
        labelText: 'الاسم',
      ),
      initialValue: initialValue,
      keyboardType: TextInputType.name,
      autofillHints: const [AutofillHints.name],
      onChanged: onValueChanged,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value?.trim().isEmpty ?? true) {
          return 'يجب ملئ الاسم';
        }
        return null;
      },
    );

    return padding != null
        ? Padding(
            padding: padding!,
            child: field,
          )
        : field;
  }
}
