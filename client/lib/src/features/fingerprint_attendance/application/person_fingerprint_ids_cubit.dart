import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonFingerprintIdsCubit extends Cubit<PersonFingerprintIdsState> {
  final String _personId;
  final FingerprintIdsDAO _fingerprintIdsDao;
  late final StreamSubscription<List<PersonFingerprintId>> _subscription;

  PersonFingerprintIdsCubit({
    required this._personId,
    FingerprintIdsDAO? fingerprintIdsDao,
  }) : _fingerprintIdsDao =
           fingerprintIdsDao ?? DatabaseService.I.fingerprintIds,
       super(const PersonFingerprintIdsState()) {
    _subscription = _fingerprintIdsDao
        .streamOfPerson(_personId)
        .listen(
          (fingerprintIds) => emit(state.loaded(fingerprintIds)),
          onError: (Object error) => emit(state.failedToLoad(error)),
        );
  }

  Future<void> addEmployeeCode(String employeeCode) async {
    final trimmedCode = employeeCode.trim();

    if (trimmedCode.isEmpty) {
      return _emitAsNewWriteUnlessOneIsInProgress(
        const FingerprintIdsWriteFailed(
          BlankFingerprintEmployeeCodeException(),
        ),
      );
    }

    await _runWriteUnlessOneIsInProgress(() async {
      await _fingerprintIdsDao.addEmployeeCode(
        personId: _personId,
        employeeCode: trimmedCode,
      );

      return FingerprintEmployeeCodeAdded(trimmedCode);
    });
  }

  Future<void> remove(PersonFingerprintId fingerprintId) =>
      _runWriteUnlessOneIsInProgress(() async {
        await _fingerprintIdsDao.remove(fingerprintId.id);

        return FingerprintIdRemoved(fingerprintId.id);
      });

  void _emitAsNewWriteUnlessOneIsInProgress(FingerprintIdsWrite write) {
    if (state.write is FingerprintIdsWriteInProgress) return;

    emit(state.withWrite(const NoFingerprintIdsWrite()));
    emit(state.withWrite(write));
  }

  Future<void> _runWriteUnlessOneIsInProgress(
    Future<FingerprintIdsWrite> Function() write,
  ) async {
    if (state.write is FingerprintIdsWriteInProgress) return;

    emit(state.withWrite(const FingerprintIdsWriteInProgress()));

    FingerprintIdsWrite finishedWrite;
    try {
      finishedWrite = await write();
    } catch (error) {
      finishedWrite = FingerprintIdsWriteFailed(error);
    }

    if (isClosed) return;

    emit(state.withWrite(finishedWrite));
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();

    return super.close();
  }
}
