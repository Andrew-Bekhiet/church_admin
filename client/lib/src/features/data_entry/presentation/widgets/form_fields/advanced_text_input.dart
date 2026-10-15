import 'package:advanced_forms/advanced_forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedTextInput<E extends Object> extends StatelessWidget {
  final AdvancedTextFieldController<E> field;
  final ErrorTranslator<E> translateError;
  final String? labelText;
  final Widget? label;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final String? counterText;
  final int? errorMaxLines;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  const AdvancedTextInput({
    required this.field,
    required this.translateError,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.labelText,
    this.label,
    this.hintText,
    this.keyboardType,
    this.autofillHints,
    this.inputFormatters,
    this.maxLength,
    this.counterText,
    this.errorMaxLines,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<String, E>(
      field: field,
      builder: (context, state, _) {
        final error = state.error;

        return TextField(
          controller: field.textController,
          focusNode: field.focusNode,
          readOnly: state.readOnly,
          enabled: !state.readOnly,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          maxLines: maxLines,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            label: label,
            hintText: hintText,
            counterText: counterText,
            errorMaxLines: errorMaxLines,
            errorText: error == null ? null : translateError(error),
          ),
        );
      },
    );
  }
}
