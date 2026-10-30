import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class GenderField extends StatelessWidget {
  final GenderFieldType type;
  final bool allowsAny;
  final bool enabled;
  final Gender? initialValue;

  final FormFieldSetter<Gender>? onSaved;
  final FormFieldValidator<Gender>? validator;
  final AutovalidateMode? autovalidateMode;

  final String label;
  final String maleLabel;
  final String femaleLabel;
  final String anyLabel;

  final void Function(Gender)? onChanged;

  List<(Gender, String, int)> get _options => [
    if (allowsAny) (Gender.any, anyLabel, 5),
    (Gender.male, maleLabel, 4),
    (Gender.female, femaleLabel, 4),
  ];

  const GenderField({
    this.type = GenderFieldType.radio,
    this.allowsAny = false,
    this.enabled = true,
    this.label = 'النوع',
    this.maleLabel = 'ذكر',
    this.femaleLabel = 'أنثى',
    this.anyLabel = 'غير معين',
    this.initialValue,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case GenderFieldType.dropdown:
        return DropdownButtonFormField<Gender>(
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          validator: validator,
          onSaved: onSaved,
          onChanged: enabled ? _maybeNotifyChanged : null,
          decoration: InputDecoration(
            enabled: enabled,
            labelText: label,
          ),
          items: [
            for (final (gender, optionLabel, _) in _options)
              DropdownMenuItem(value: gender, child: Text(optionLabel)),
          ],
        );

      case GenderFieldType.radio:
        return FormField<Gender>(
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          validator: validator,
          enabled: enabled,
          builder: (state) {
            final optionStyle = Theme.of(context).textTheme.titleMedium;

            return InputDecorator(
              decoration: InputDecoration(
                labelText: label,
                errorText: state.errorText,
              ),
              child: RadioGroup<Gender>(
                groupValue: state.value,
                onChanged: (gender) => _maybeChange(state, gender),
                child: Row(
                  children: [
                    for (final (gender, optionLabel, flex) in _options)
                      Expanded(
                        flex: flex,
                        child: Row(
                          children: [
                            Radio<Gender>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: gender,
                            ),
                            GestureDetector(
                              onTap: () => _maybeChange(state, gender),
                              child: Text(optionLabel, style: optionStyle),
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

  void _maybeNotifyChanged(Gender? gender) {
    if (gender != null) onChanged?.call(gender);
  }

  void _maybeChange(FormFieldState<Gender> state, Gender? gender) {
    if (gender == null) return;

    state.didChange(gender);
    onChanged?.call(gender);
  }
}

enum GenderFieldType {
  radio,
  dropdown,
}
