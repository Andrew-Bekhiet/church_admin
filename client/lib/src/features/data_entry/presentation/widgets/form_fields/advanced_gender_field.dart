import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedGenderField<E extends Object> extends StatelessWidget {
  final AdvancedFieldController<Gender, E> field;
  final String label;
  final String maleLabel;
  final String femaleLabel;
  final String anyLabel;

  const AdvancedGenderField({
    required this.field,
    required this.anyLabel,
    this.label = 'النوع',
    this.maleLabel = 'ذكر',
    this.femaleLabel = 'أنثى',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final optionStyle = TextTheme.of(context).titleMedium;

    return AdvancedFieldBuilder<Gender, E>(
      field: field,
      builder: (context, state, _) => InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          enabled: !state.readOnly,
        ),
        child: RadioGroup<Gender>(
          groupValue: state.value,
          onChanged: _maybeSetValue,
          child: Row(
            children: [
              for (final (gender, optionLabel, flex) in [
                (Gender.any, anyLabel, 5),
                (Gender.male, maleLabel, 4),
                (Gender.female, femaleLabel, 4),
              ])
                Expanded(
                  flex: flex,
                  child: Row(
                    children: [
                      Radio<Gender>(
                        enabled: !state.readOnly,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: gender,
                      ),
                      GestureDetector(
                        onTap: state.readOnly
                            ? null
                            : () => field.setValue(gender),
                        child: Text(optionLabel, style: optionStyle),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _maybeSetValue(Gender? gender) {
    if (gender != null) field.setValue(gender);
  }
}
