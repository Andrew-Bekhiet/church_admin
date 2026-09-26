import 'package:equatable/equatable.dart';

sealed class BiometricsAuthState with Equatable {
  final bool canCheckBiometrics;
  final String imageAsset;

  @override
  List<Object?> get props => [canCheckBiometrics, imageAsset];

  const BiometricsAuthState({
    required this.canCheckBiometrics,
    required this.imageAsset,
  });
}

final class BiometricsAuthReady extends BiometricsAuthState {
  const BiometricsAuthReady({
    required super.canCheckBiometrics,
    required super.imageAsset,
  });
}

final class BiometricsAuthAuthenticating extends BiometricsAuthState {
  const BiometricsAuthAuthenticating({
    required super.canCheckBiometrics,
    required super.imageAsset,
  });
}

final class BiometricsAuthWrongPassword extends BiometricsAuthState {
  const BiometricsAuthWrongPassword({
    required super.canCheckBiometrics,
    required super.imageAsset,
  });
}

final class BiometricsAuthFailure extends BiometricsAuthState {
  const BiometricsAuthFailure({
    required super.canCheckBiometrics,
    required super.imageAsset,
  });
}
