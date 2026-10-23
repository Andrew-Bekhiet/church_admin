import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BiometricsAuthCubit extends Cubit<BiometricsAuthState> {
  final LocalAuthService _localAuthService;
  final AuthRepository _authRepository;
  final AuthStorage _authStorage;
  final EncryptionService _encryptionService;
  final AnalyticsService _analyticsService;
  final Clock _clock;
  final DateTime _lockedAt;
  final AppRoute? next;

  Duration get _lockedFor => _clock.now().difference(_lockedAt);

  BiometricsAuthCubit({
    LocalAuthService? localAuthService,
    AuthRepository? authRepository,
    AuthStorage? authStorage,
    EncryptionService? encryptionService,
    AnalyticsService? analyticsService,
    Clock? clock,
    this.next,
  }) : _localAuthService = localAuthService ?? LocalAuthService.I,
       _analyticsService = analyticsService ?? AnalyticsService.I,
       _clock = clock ?? const Clock(),
       _lockedAt = (clock ?? const Clock()).now(),
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
      _trackLockShow(canCheckBiometrics: false);

      return;
    }
    _trackLockShow(canCheckBiometrics: canCheckBiometrics);
    if (isClosed) return;

    emit(
      BiometricsAuthReady(
        canCheckBiometrics: canCheckBiometrics,
        imageAsset: state.imageAsset,
      ),
    );
  }

  Future<void> authenticateBiometrically({bool isAutoPrompted = false}) async {
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
      _trackBiometricsUnlock(UnlockOutcome.failed, isAutoPrompted);
      if (!isClosed) _emitFailure();

      return;
    }
    _trackBiometricsUnlock(
      authenticated ? UnlockOutcome.unlocked : UnlockOutcome.notAuthenticated,
      isAutoPrompted,
    );
    if (isClosed) return;

    if (authenticated) {
      _localAuthService.resetAuthState(route: next);

      return;
    }

    _emitReady();
  }

  Future<void> submitPassword(String password) async {
    if (isClosed) return;

    emit(
      BiometricsAuthAuthenticating(
        canCheckBiometrics: state.canCheckBiometrics,
        imageAsset: state.imageAsset,
      ),
    );
    try {
      final email = _authRepository.currentUserEmail;
      if (email == null) {
        _trackPasswordUnlock(UnlockOutcome.failed);
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
      _trackPasswordUnlock(
        authenticated ? UnlockOutcome.unlocked : UnlockOutcome.wrongPassword,
      );
      if (isClosed) return;

      if (authenticated) {
        _localAuthService.resetAuthState(route: next);

        return;
      }

      emit(
        BiometricsAuthWrongPassword(
          canCheckBiometrics: state.canCheckBiometrics,
          imageAsset: state.imageAsset,
        ),
      );
    } on Exception {
      _trackPasswordUnlock(UnlockOutcome.failed);
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

  void _trackLockShow({required bool canCheckBiometrics}) =>
      _analyticsService.track(
        LocalAuthLockShow(
          canCheckBiometrics: canCheckBiometrics,
          isProtectingRoute: next != null,
        ),
      );

  void _trackBiometricsUnlock(UnlockOutcome outcome, bool isAutoPrompted) =>
      _analyticsService.track(
        BiometricsUnlockSubmit(
          outcome: outcome,
          isAutoPrompted: isAutoPrompted,
          lockedFor: _lockedFor,
        ),
      );

  void _trackPasswordUnlock(UnlockOutcome outcome) => _analyticsService.track(
    PasswordUnlockSubmit(
      outcome: outcome,
      canCheckBiometrics: state.canCheckBiometrics,
      lockedFor: _lockedFor,
    ),
  );

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
