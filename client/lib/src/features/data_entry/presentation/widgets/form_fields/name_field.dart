import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final String? initialValue;
  final String? hintText;

  final void Function(String) onValueChanged;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;

  const NameField({
    required this.onValueChanged,
    this.initialValue,
    this.hintText,
    this.padding,
    this.controller,
    super.key,
  }) : assert(
         controller == null || initialValue == null,
         'Provide either controller or initialValue, not both',
       );

  @override
  Widget build(BuildContext context) {
    final field = TextFormField(
      key: controller == null ? ValueKey(initialValue) : null,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: 'الاسم',
      ),
      controller: controller,
      initialValue: controller == null ? initialValue : null,
      keyboardType: TextInputType.name,
      autofillHints: const [AutofillHints.name],
      onChanged: onValueChanged,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value?.trim().isEmpty ?? true) {
          return 'برجاء إدخال الاسم';
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
