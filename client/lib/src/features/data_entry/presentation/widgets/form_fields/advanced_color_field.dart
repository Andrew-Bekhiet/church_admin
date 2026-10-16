import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedColorField<E extends Object> extends StatelessWidget {
  final AdvancedFieldController<Color?, E> field;
  final ErrorTranslator<E> translateError;

  const AdvancedColorField({
    required this.field,
    required this.translateError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<Color?, E>(
      field: field,
      builder: (context, state, _) {
        final color = state.value;
        final error = state.error;

        return TappableInputField<Color?>(
          value: color,
          isEmpty: false,
          focusNode: field.focusNode,
          decoration: InputDecoration(
            labelText: 'اللون',
            errorText: error == null ? null : translateError(error),
            suffixIcon: color != null && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف اللون',
                    onPressed: () => field.setValue(null),
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          onTap: state.readOnly ? null : () => _select(context),
          child: ColorIndicator(
            width: 50,
            height: 50,
            borderRadius: 20,
            color: color ?? Colors.transparent,
          ),
        );
      },
    );
  }

  Future<void> _select(BuildContext context) async {
    final picked = await ColorPickerDialog.pick(
      context,
      initial: field.fieldValue ?? Theme.of(context).primaryColor,
    );

    if (picked != null && !field.isDisposed && picked != field.fieldValue) {
      field.setValue(picked);
    }
  }
}
