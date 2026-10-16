import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:material_ui/material_ui.dart';

abstract final class ColorPickerDialog {
  static Future<Color?> pick(
    BuildContext context, {
    required Color initial,
  }) async {
    final themeData = Theme.of(context);
    final primaryColor = themeData.primaryColor;
    Color? pickedColor;

    final confirmed = await ColorPicker(
      color: initial,
      onColorChanged: (newColor) => pickedColor = newColor,
      title: Text('اختيار اللون', style: themeData.textTheme.titleLarge),
      subheading: Text('درجة اللون ١', style: themeData.textTheme.bodyLarge),
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
    ).showPickerDialog(context, barrierColor: Colors.black54);

    return confirmed ? pickedColor : null;
  }
}
