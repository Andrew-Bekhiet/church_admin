import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordResetCubit extends Cubit<PasswordResetState> {
  final AuthRepository _authRepository;
  final AnalyticsService _analyticsService;

  PasswordResetCubit({
    AuthRepository? authRepository,
    AnalyticsService? analyticsService,
  }) : _authRepository =
           authRepository ??
           globalProviderContainer.read(
             authRepositoryProvider,
           ),
       _analyticsService = analyticsService ?? AnalyticsService.I,
       super(const PasswordResetIdle());

  Future<void> sendPasswordResetEmail(
    String email, {
    required String userId,
  }) async {
    emit(const PasswordResetSending());

    try {
      await _authRepository.sendPasswordResetEmail(email: email);

      _analyticsService.track(UserPasswordResetSend(userId, isSuccess: true));
      emit(PasswordResetSent(email: email));
    } catch (error, stackTrace) {
      _analyticsService.track(UserPasswordResetSend(userId, isSuccess: false));
      await LoggingService.I.exception(
        LogRecord(error: error, stackTrace: stackTrace),
      );

      emit(PasswordResetFailed(error: error));
    }
  }
}
