import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BiometricsAuthCubit extends Cubit<BiometricsAuthState> {
  final LocalAuthService _localAuthService;
  final AuthRepository _authRepository;
  final AuthStorage _authStorage;
  final EncryptionService _encryptionService;
  final String? next;

  BiometricsAuthCubit({
    LocalAuthService? localAuthService,
    AuthRepository? authRepository,
    AuthStorage? authStorage,
    EncryptionService? encryptionService,
    this.next,
  }) : _localAuthService = localAuthService ?? LocalAuthService.I,
       _authRepository =
           authRepository ??
           globalProviderContainer.read(authRepositoryProvider),
       _authStorage = authStorage ?? AuthStorage.I,
       _encryptionService = encryptionService ?? EncryptionService.I,
       super(
         BiometricsAuthReady(
           canCheckBiometrics: false,
           imageAsset: switch (LiturgySeason.current) {
             LiturgySeason.holyWeek => 'assets/holyweek.jpeg',
             LiturgySeason.pentecost => 'assets/risen.jpg',
             _ => 'assets/logo.png',
           },
         ),
       );

  Future<void> initialize() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await _localAuthService.canCheckBiometrics();
    } on Exception {
      return;
    }
    if (isClosed) return;

    emit(
      BiometricsAuthReady(
        canCheckBiometrics: canCheckBiometrics,
        imageAsset: state.imageAsset,
      ),
    );
    if (canCheckBiometrics) await authenticateBiometrically();
  }

  Future<void> authenticateBiometrically() async {
    if (state is BiometricsAuthAuthenticating || isClosed) return;

    emit(
      BiometricsAuthAuthenticating(
        canCheckBiometrics: state.canCheckBiometrics,
        imageAsset: state.imageAsset,
      ),
    );
    bool authenticated;
    try {
      authenticated = await _localAuthService.authenticate();
    } on Exception {
      if (!isClosed) _emitFailure();

      return;
    }
    if (isClosed) return;

    if (authenticated) {
      _localAuthService.resetAuthState(path: next);

      return;
    }

    _emitReady();
  }

  Future<void> submitPassword(String password) async {
    if (state is BiometricsAuthAuthenticating || isClosed) return;

    emit(
      BiometricsAuthAuthenticating(
        canCheckBiometrics: state.canCheckBiometrics,
        imageAsset: state.imageAsset,
      ),
    );
    try {
      final email = _authRepository.currentUserEmail;
      if (email == null) {
        _emitFailure();

        return;
      }

      final storedPasswordHash = await _authStorage.getPasswordHash();
      final keyBytes = await _encryptionService.deriveKey(
        password: password,
        salt: email,
      );
      final authenticated = await _encryptionService.verifyPassword(
        passwordToVerify: password,
        keyBytes: keyBytes,
        storedPasswordHash: storedPasswordHash,
      );
      if (isClosed) return;

      if (authenticated) {
        _localAuthService.resetAuthState(path: next);

        return;
      }

      emit(
        BiometricsAuthWrongPassword(
          canCheckBiometrics: state.canCheckBiometrics,
          imageAsset: state.imageAsset,
        ),
      );
    } on Exception {
      if (!isClosed) _emitFailure();
    }
  }

  void clearError() {
    if (state is! BiometricsAuthWrongPassword &&
        state is! BiometricsAuthFailure) {
      return;
    }

    _emitReady();
  }

  void _emitReady() => emit(
    BiometricsAuthReady(
      canCheckBiometrics: state.canCheckBiometrics,
      imageAsset: state.imageAsset,
    ),
  );

  void _emitFailure() => emit(
    BiometricsAuthFailure(
      canCheckBiometrics: state.canCheckBiometrics,
      imageAsset: state.imageAsset,
    ),
  );
}
