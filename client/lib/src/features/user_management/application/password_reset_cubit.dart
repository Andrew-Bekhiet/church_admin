import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordResetCubit extends Cubit<PasswordResetState> {
  final AuthRepository _authRepository;

  PasswordResetCubit({AuthRepository? authRepository})
    : _authRepository =
          authRepository ??
          globalProviderContainer.read(
            authRepositoryProvider,
          ),
      super(const PasswordResetIdle());

  Future<void> sendPasswordResetEmail(String email) async {
    emit(const PasswordResetSending());

    try {
      await _authRepository.sendPasswordResetEmail(email: email);

      emit(PasswordResetSent(email: email));
    } catch (error, stackTrace) {
      await LoggingService.I.exception(
        LogRecord(error: error, stackTrace: stackTrace),
      );

      emit(PasswordResetFailed(error: error));
    }
  }
}
