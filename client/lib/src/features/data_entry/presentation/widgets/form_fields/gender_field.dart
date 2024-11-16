import 'package:flutter/material.dart';

class GenderField extends StatelessWidget {
  final bool nullable;
  final bool enabled;
  final bool? initialValue;

  final FormFieldSetter<bool?>? onSaved;
  final void Function(bool?)? onChanged;
  final FormFieldValidator<bool?>? validator;
  final AutovalidateMode? autovalidateMode;

  final String label;
  final String maleLabel;
  final String femaleLabel;
  final String nullLabel;

  const GenderField({
    this.nullable = false,
    this.enabled = true,
    this.initialValue,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    this.label = 'النوع',
    this.maleLabel = 'ذكر',
    this.femaleLabel = 'أنثى',
    this.nullLabel = 'غير معين',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
      builder: (state) => InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          errorText: state.errorText,
        ),
        child: Row(
          children: [
            if (nullable)
              Expanded(
                child: Row(
                  children: [
                    Radio<bool?>(
                      value: null,
                      groupValue: state.value,
                      onChanged: (v) => _onChanged(state, v),
                    ),
                    GestureDetector(
                      onTap: () => _onChanged(state, null),
                      child: Text(nullLabel),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Row(
                children: [
                  Radio<bool?>(
                    value: true,
                    groupValue: state.value,
                    onChanged: (v) => _onChanged(state, v),
                  ),
                  GestureDetector(
                    onTap: () => _onChanged(state, true),
                    child: Text(maleLabel),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Radio<bool?>(
                    value: false,
                    groupValue: state.value,
                    onChanged: (v) => _onChanged(state, v),
                  ),
                  GestureDetector(
                    onTap: () => _onChanged(state, false),
                    child: Text(femaleLabel),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(FormFieldState<bool?> state, bool? value) {
    state.didChange(value);
    if (onChanged != null) {
      onChanged?.call(value);
    }
  }
}
