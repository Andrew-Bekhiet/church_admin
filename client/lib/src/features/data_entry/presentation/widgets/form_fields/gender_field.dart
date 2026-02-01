import 'package:flutter/material.dart';

enum GenderFieldType {
  radio,
  dropdown,
}

class GenderField extends StatelessWidget {
  final GenderFieldType type;
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
    this.type = GenderFieldType.radio,
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
    switch (type) {
      case GenderFieldType.dropdown:
        return DropdownButtonFormField<bool?>(
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          validator: validator,
          onSaved: onSaved,
          onChanged: enabled ? onChanged : null,
          decoration: InputDecoration(
            enabled: enabled,
            labelText: label,
          ),
          items: [
            if (nullable) DropdownMenuItem(child: Text(nullLabel)),
            DropdownMenuItem(value: true, child: Text(maleLabel)),
            DropdownMenuItem(value: false, child: Text(femaleLabel)),
          ],
        );

      case GenderFieldType.radio:
        return FormField<bool>(
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          validator: validator,
          enabled: enabled,
          builder: (state) {
            final theme = Theme.of(context);
            return InputDecorator(
              decoration: InputDecoration(
                labelText: label,
                errorText: state.errorText,
              ),
              child: RadioGroup<bool?>(
                groupValue: state.value,
                onChanged: (v) => _onChanged(state, v),
                child: Row(
                  children: [
                    if (nullable)
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            const Radio<bool?>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: null,
                            ),
                            GestureDetector(
                              onTap: () => _onChanged(state, null),
                              child: Text(
                                nullLabel,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Radio<bool?>(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: true,
                          ),
                          GestureDetector(
                            onTap: () => _onChanged(state, true),
                            child: Text(
                              maleLabel,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Radio<bool?>(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: false,
                          ),
                          GestureDetector(
                            onTap: () => _onChanged(state, false),
                            child: Text(
                              femaleLabel,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
    }
  }

  void _onChanged(FormFieldState<bool?> state, bool? value) {
    state.didChange(value);
    if (onChanged != null) {
      onChanged?.call(value);
    }
  }
}
