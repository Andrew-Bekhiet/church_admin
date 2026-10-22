import 'package:advanced_forms/advanced_forms.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedGenderField<E extends Object> extends StatelessWidget {
  final AdvancedFieldController<bool?, E> field;
  final String label;
  final String maleLabel;
  final String femaleLabel;
  final String bothLabel;

  const AdvancedGenderField({
    required this.field,
    required this.bothLabel,
    this.label = 'النوع',
    this.maleLabel = 'ذكر',
    this.femaleLabel = 'أنثى',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final optionStyle = TextTheme.of(context).titleMedium;

    return AdvancedFieldBuilder<bool?, E>(
      field: field,
      builder: (context, state, _) => InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          enabled: !state.readOnly,
        ),
        child: RadioGroup<bool?>(
          groupValue: state.value,
          onChanged: field.setValue,
          child: Row(
            children: [
              for (final (isMale, optionLabel, flex) in [
                (null, bothLabel, 5),
                (true, maleLabel, 4),
                (false, femaleLabel, 4),
              ])
                Expanded(
                  flex: flex,
                  child: Row(
                    children: [
                      Radio<bool?>(
                        enabled: !state.readOnly,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: isMale,
                      ),
                      GestureDetector(
                        onTap: state.readOnly
                            ? null
                            : () => field.setValue(isMale),
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
}
