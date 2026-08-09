import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_symbols_icons/symbols.dart';

class ColorField extends StatelessWidget {
  final Color? initialValue;
  final bool nullable;
  final FormFieldSetter<Color?>? onSaved;
  final FormFieldValidator<Color?>? validator;
  final AutovalidateMode? autovalidateMode;

  const ColorField({
    this.initialValue,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.onChanged,
    this.nullable = true,
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
    final themeData = Theme.of(context);

    final focusScope = FocusScope.of(context);
    Color? newColorColor;

    final primaryColor = themeData.primaryColor;
    final dialogResult =
        await ColorPicker(
          color: state.value ?? themeData.primaryColor,
          onColorChanged: (newColor) => newColorColor = newColor,
          title: Text(
            'اختيار اللون',
            style: themeData.textTheme.titleLarge,
          ),
          subheading: Text(
            'درجة اللون ١',
            style: themeData.textTheme.bodyLarge,
          ),
          tonalSubheading: Text(
            'درجة اللون ٢',
            style: themeData.textTheme.bodyLarge,
          ),
          spacing: 10,
          runSpacing: 10,
          borderRadius: 20,
          wheelDiameter: 165,
          enableTonalPalette: true,
          showColorCode: true,
          pickerTypeLabels: const {
            ColorPickerType.custom: 'ألوان جاهزة',
            ColorPickerType.wheel: 'متقدم',
          },
          pickersEnabled: const <ColorPickerType, bool>{
            ColorPickerType.wheel: true,
            ColorPickerType.both: false,
            ColorPickerType.primary: false,
            ColorPickerType.accent: false,
            ColorPickerType.bw: false,
            ColorPickerType.custom: true,
            ColorPickerType.customSecondary: false,
          },
          customColorSwatchesAndNames: {
            for (final color in ColorTools.primaryAndAccentColors)
              color: ColorTools.nameThatColor(color),
            ColorTools.primarySwatch(primaryColor): ColorTools.nameThatColor(
              primaryColor,
            ),
          },
          copyPasteBehavior: const ColorPickerCopyPasteBehavior(
            copyButton: true,
            pasteButton: true,
            longPressMenu: true,
          ),
        ).showPickerDialog(
          context,
          barrierColor: Colors.black54,
        );

    if (!dialogResult ||
        newColorColor == null ||
        newColorColor == state.value) {
      return;
    }

    state.didChange(newColorColor);
    onChanged?.call(newColorColor);
    focusScope.nextFocus();
  }
}
