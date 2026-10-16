import 'package:church_admin/church_admin.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class ColorField extends StatelessWidget {
  final Color? initialValue;
  final bool nullable;
  final FormFieldSetter<Color?>? onSaved;
  final FormFieldValidator<Color?>? validator;
  final AutovalidateMode? autovalidateMode;

  const ColorField({
    this.nullable = true,
    this.initialValue,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: FormField<Color?>(
        initialValue: initialValue,
        autovalidateMode: autovalidateMode,
        onSaved: onSaved,
        validator: validator,
        builder: (state) => InkWell(
          onTap: () => _selectColor(context, state),
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: 'اللون',
              suffixIcon: nullable
                  ? IconButton(
                      icon: const Icon(Symbols.delete),
                      onPressed: () {
                        state.didChange(null);
                        onChanged?.call(null);
                      },
                    )
                  : null,
            ),
            child: ColorIndicator(
              width: 50,
              height: 50,
              borderRadius: 20,
              color: state.value ?? Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  final void Function(Color?)? onChanged;

  Future<void> _selectColor(
    BuildContext context,
    FormFieldState<Color?> state,
  ) async {
    final focusScope = FocusScope.of(context);

    final picked = await ColorPickerDialog.pick(
      context,
      initial: state.value ?? Theme.of(context).primaryColor,
    );

    if (picked == null || picked == state.value) return;

    state.didChange(picked);
    onChanged?.call(picked);
    focusScope.nextFocus();
  }
}
