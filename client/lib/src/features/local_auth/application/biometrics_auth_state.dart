import 'package:equatable/equatable.dart';

class BiometricsAuthState with Equatable {
  final bool canCheckBiometrics;
  final bool isAuthenticating;
  final bool wrongPassword;
  final bool authenticationFailed;

  @override
  List<Object?> get props => [
    canCheckBiometrics,
    isAuthenticating,
    wrongPassword,
    authenticationFailed,
  ];

  const BiometricsAuthState({
    this.canCheckBiometrics = false,
    this.isAuthenticating = false,
    this.wrongPassword = false,
    this.authenticationFailed = false,
  });

  BiometricsAuthState copyWith({
    bool? canCheckBiometrics,
    bool? isAuthenticating,
    bool? wrongPassword,
    bool? authenticationFailed,
  }) => BiometricsAuthState(
    canCheckBiometrics: canCheckBiometrics ?? this.canCheckBiometrics,
    isAuthenticating: isAuthenticating ?? this.isAuthenticating,
    wrongPassword: wrongPassword ?? this.wrongPassword,
    authenticationFailed: authenticationFailed ?? this.authenticationFailed,
  );
}
