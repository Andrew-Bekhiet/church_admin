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
       super(const PersonFingerprintIdsLoading()) {
    _subscription = _fingerprintIdsDao
        .streamOfPerson(_personId)
        .listen(
          (fingerprintIds) => emit(switch (state) {
            final PersonFingerprintIdsLoaded state => state.copyWith(
              fingerprintIds: fingerprintIds,
            ),
            _ => PersonFingerprintIdsLoaded(fingerprintIds: fingerprintIds),
          }),
          onError: _reportLoadErrorUnlessFingerprintIdsAreShown,
        );
  }

  Future<void> addEmployeeCode(String employeeCode) =>
      _runWriteIfStateAcceptsWrites(() async {
        await _fingerprintIdsDao.addEmployeeCode(
          personId: _personId,
          employeeCode: employeeCode,
        );

        return FingerprintEmployeeCodeAdded(employeeCode);
      });

  Future<void> remove(PersonFingerprintId fingerprintId) =>
      _runWriteIfStateAcceptsWrites(() async {
        await _fingerprintIdsDao.remove(fingerprintId.id);

        return FingerprintIdRemoved(fingerprintId.id);
      });

  void _reportLoadErrorUnlessFingerprintIdsAreShown(Object error) {
    if (state is PersonFingerprintIdsLoaded) return;

    emit(PersonFingerprintIdsFailedToLoad(error: error));
  }

  Future<void> _runWriteIfStateAcceptsWrites(
    Future<FingerprintIdsWrite> Function() write,
  ) async {
    if (!state.acceptsWrites) return;

    _emitWriteIfLoaded(const FingerprintIdsWriteInProgress());

    FingerprintIdsWrite finishedWrite;
    try {
      finishedWrite = await write();
    } catch (error) {
      finishedWrite = FingerprintIdsWriteFailed(error);
    }

    if (isClosed) return;

    _emitWriteIfLoaded(finishedWrite);
  }

  void _emitWriteIfLoaded(FingerprintIdsWrite write) {
    if (state case final PersonFingerprintIdsLoaded loaded) {
      emit(loaded.copyWith(write: write));
    }
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();

    return super.close();
  }
}
