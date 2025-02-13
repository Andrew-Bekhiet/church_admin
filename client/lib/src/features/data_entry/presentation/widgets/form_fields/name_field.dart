import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final String? initialValue;
  final String? hintText;

  final void Function(String) onValueChanged;
  final EdgeInsetsGeometry? padding;

  const NameField({
    required this.onValueChanged,
    this.initialValue,
    this.hintText,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final field = TextFormField(
      key: ValueKey(initialValue),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
        labelText: 'الاسم',
        floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: outLineInputBorder(context),
        enabledBorder: outLineInputBorder(context),
        focusedBorder: outLineInputBorder(context),
      ),
      initialValue: initialValue,
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

  OutlineInputBorder outLineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
