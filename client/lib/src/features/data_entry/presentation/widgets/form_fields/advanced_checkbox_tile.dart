import 'package:advanced_forms/advanced_forms.dart';
import 'package:flutter/material.dart';

class AdvancedCheckboxTile<E extends Object> extends StatelessWidget {
  final AdvancedBooleanFieldController<E> field;
  final String title;

  const AdvancedCheckboxTile({
    required this.field,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<bool, E>(
      field: field,
      builder: (context, state, _) => CheckboxListTile(
        title: Text(title),
        value: state.value,
        focusNode: field.focusNode,
        onChanged: state.readOnly
            ? null
            : (checked) => field.setValue(checked ?? false),
      ),
    );
  }
}
