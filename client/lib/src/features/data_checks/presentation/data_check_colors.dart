import 'package:material_ui/material_ui.dart';

class DataCheckColors extends ThemeExtension<DataCheckColors> {
  static const Color _defaultSeedColor = Color(0xFF2E7D32);

  final Color complete;

  const DataCheckColors({required this.complete});

  factory DataCheckColors.forScheme(ColorScheme scheme) {
    final green = ColorScheme.fromSeed(
      seedColor: _defaultSeedColor,
      brightness: scheme.brightness,
    );

    return DataCheckColors(complete: green.primary);
  }

  factory DataCheckColors.of(BuildContext context) =>
      Theme.of(context).extension<DataCheckColors>() ??
      DataCheckColors.forScheme(ColorScheme.of(context));

  @override
  DataCheckColors copyWith({Color? complete}) =>
      DataCheckColors(complete: complete ?? this.complete);

  @override
  DataCheckColors lerp(DataCheckColors? other, double t) {
    if (other == null) return this;

    return DataCheckColors(
      complete: Color.lerp(complete, other.complete, t) ?? complete,
    );
  }
}
