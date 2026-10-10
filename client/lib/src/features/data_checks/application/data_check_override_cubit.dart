import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCheckOverrideCubit extends Cubit<DataCheckOverrideState> {
  final DataChecksDAO _dao;

  DataCheckOverrideCubit({required DataCheck dataCheck, DataChecksDAO? dao})
    : _dao = dao ?? DatabaseService.I.dataChecks,
      super(DataCheckOverrideState(dataCheck: dataCheck));

  Future<void> choose(DataCheckOverride override) async {
    if (state.isSaving) return;

    final previous = state.dataCheck;
    if (DataCheckOverride.fromUserOverride(previous.userOverride) == override) {
      return;
    }

    emit(
      DataCheckOverrideState(
        dataCheck: previous.withUserOverride(override.userOverride),
        isSaving: true,
      ),
    );

    final failure = await _save(previous.familyId, override);
    if (isClosed) return;

    emit(
      DataCheckOverrideState(
        dataCheck: failure == null ? state.dataCheck : previous,
        error: failure,
      ),
    );
  }

  Future<DataCheckOverrideError?> _save(
    String familyId,
    DataCheckOverride override,
  ) async {
    try {
      if (override.userOverride case final isComplete?) {
        final applied = await _dao.tryOverride(
          familyId: familyId,
          isComplete: isComplete,
        );

        return applied ? null : DataCheckOverrideError.notPermitted;
      }

      final cleared = await _dao.tryClearOverride(familyId: familyId);

      return cleared ? null : DataCheckOverrideError.notPermitted;
    } catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(
            moduleName: '$DataCheckOverrideCubit',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );

      return DataCheckOverrideError.saveFailed;
    }
  }
}
