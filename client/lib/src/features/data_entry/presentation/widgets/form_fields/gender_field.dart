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
      builder: (state) {
        final theme = Theme.of(context);
        return InputDecorator(
          decoration: InputDecoration(
            border: outLineInputBorder(context),
            enabledBorder: outLineInputBorder(context),
            focusedBorder: outLineInputBorder(context),
            labelText: label,
            labelStyle: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
            errorText: state.errorText,
          ),
          child: Row(
            children: [
              if (nullable)
                Expanded(
                  child: Row(
                    children: [
                      Radio<bool?>(
                        activeColor: theme.colorScheme.primaryContainer,
                        focusColor: theme.colorScheme.primaryContainer,
                        hoverColor: theme.colorScheme.primaryContainer,
                        fillColor: WidgetStateProperty.all(
                          theme.colorScheme.primaryContainer,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: null,
                        groupValue: state.value,
                        onChanged: (v) => _onChanged(state, v),
                      ),
                      GestureDetector(
                        onTap: () => _onChanged(state, null),
                        child: Text(
                          nullLabel,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Row(
                  children: [
                    Radio<bool?>(
                      activeColor: theme.colorScheme.primaryContainer,
                      focusColor: theme.colorScheme.primaryContainer,
                      hoverColor: theme.colorScheme.primaryContainer,
                      fillColor: WidgetStateProperty.all(
                        theme.colorScheme.primaryContainer,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: true,
                      groupValue: state.value,
                      onChanged: (v) => _onChanged(state, v),
                    ),
                    GestureDetector(
                      onTap: () => _onChanged(state, true),
                      child: Text(maleLabel,
                        style: theme.textTheme.titleSmall!.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio<bool?>(
                      activeColor: theme.colorScheme.primaryContainer,
                      focusColor: theme.colorScheme.primaryContainer,
                      hoverColor: theme.colorScheme.primaryContainer,
                      fillColor: WidgetStateProperty.all(
                        theme.colorScheme.primaryContainer,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: false,
                      groupValue: state.value,
                      onChanged: (v) => _onChanged(state, v),
                    ),
                    GestureDetector(
                      onTap: () => _onChanged(state, false),
                      child: Text(femaleLabel,
                        style: theme.textTheme.titleSmall!.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onChanged(FormFieldState<bool?> state, bool? value) {
    state.didChange(value);
    if (onChanged != null) {
      onChanged?.call(value);
    }
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
