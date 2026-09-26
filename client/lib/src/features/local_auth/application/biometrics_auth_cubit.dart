import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BiometricsAuthCubit extends Cubit<BiometricsAuthState> {
  final LocalAuthService _localAuthService;
  final String? next;

  BiometricsAuthCubit({LocalAuthService? localAuthService, this.next})
    : _localAuthService = localAuthService ?? LocalAuthService.I,
      super(const BiometricsAuthState());

  Future<void> initialize() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await _localAuthService.canCheckBiometrics();
    } on Exception {
      return;
    }
    if (isClosed) return;

    emit(state.copyWith(canCheckBiometrics: canCheckBiometrics));
    if (canCheckBiometrics) await authenticateBiometrically();
  }

  Future<void> authenticateBiometrically() async {
    if (state.isAuthenticating || isClosed) return;

    emit(state.copyWith(isAuthenticating: true, authenticationFailed: false));
    bool authenticated;
    try {
      authenticated = await _localAuthService.authenticate();
    } on Exception {
      if (!isClosed) {
        emit(
          state.copyWith(isAuthenticating: false, authenticationFailed: true),
        );
      }

      return;
    }
    if (isClosed) return;

    if (authenticated) {
      _localAuthService.resetAuthState(path: next);

      return;
    }

    emit(state.copyWith(isAuthenticating: false));
  }

  Future<void> submitPassword(String password) async {
    if (state.isAuthenticating || isClosed) return;

    emit(
      state.copyWith(
        isAuthenticating: true,
        wrongPassword: false,
        authenticationFailed: false,
      ),
    );
    bool authenticated;
    try {
      authenticated = await _localAuthService.verifyPassword(password);
    } on Exception {
      if (!isClosed) {
        emit(
          state.copyWith(isAuthenticating: false, authenticationFailed: true),
        );
      }

      return;
    }
    if (isClosed) return;

    if (authenticated) {
      _localAuthService.resetAuthState(path: next);

      return;
    }

    emit(state.copyWith(isAuthenticating: false, wrongPassword: true));
  }

  void clearError() {
    if (!state.wrongPassword && !state.authenticationFailed) return;

    emit(state.copyWith(wrongPassword: false, authenticationFailed: false));
  }
}
