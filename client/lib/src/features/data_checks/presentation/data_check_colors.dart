import 'package:flutter/material.dart';

class DataCheckColors extends ThemeExtension<DataCheckColors> {
  static const Color seedColor = Color(0xFF2E7D32);

  final Color complete;
  final Color onComplete;
  final Color completeContainer;
  final Color onCompleteContainer;

  const DataCheckColors({
    required this.complete,
    required this.onComplete,
    required this.completeContainer,
    required this.onCompleteContainer,
  });

  factory DataCheckColors.forScheme(ColorScheme scheme) {
    final green = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: scheme.brightness,
    );

    return DataCheckColors(
      complete: green.primary,
      onComplete: green.onPrimary,
      completeContainer: green.primaryContainer,
      onCompleteContainer: green.onPrimaryContainer,
    );
  }

  factory DataCheckColors.of(BuildContext context) =>
      Theme.of(context).extension<DataCheckColors>() ??
      DataCheckColors.forScheme(ColorScheme.of(context));

  @override
  DataCheckColors copyWith({
    Color? complete,
    Color? onComplete,
    Color? completeContainer,
    Color? onCompleteContainer,
  }) => DataCheckColors(
    complete: complete ?? this.complete,
    onComplete: onComplete ?? this.onComplete,
    completeContainer: completeContainer ?? this.completeContainer,
    onCompleteContainer: onCompleteContainer ?? this.onCompleteContainer,
  );

  @override
  DataCheckColors lerp(DataCheckColors? other, double t) {
    if (other == null) return this;

    return DataCheckColors(
      complete: Color.lerp(complete, other.complete, t) ?? complete,
      onComplete: Color.lerp(onComplete, other.onComplete, t) ?? onComplete,
      completeContainer:
          Color.lerp(completeContainer, other.completeContainer, t) ??
          completeContainer,
      onCompleteContainer:
          Color.lerp(onCompleteContainer, other.onCompleteContainer, t) ??
          onCompleteContainer,
    );
  }
}
