import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// `asServant`: `null` includes both member and servant rows; `true`
/// restricts to servant rows only.
class PersonAttendanceAnalysisCubit
    extends Cubit<PersonAttendanceAnalysisState> {
  final MeetingsDAO _dao;
  final String _personId;
  final bool? _asServant;

  PersonAttendanceAnalysisCubit({
    required this._personId,
    required PersonAnalysisOptions options,
    this._asServant,
    MeetingsDAO? dao,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       super(const PersonAttendanceAnalysisLoading()) {
    unawaited(load(options));
  }

  Future<void> load(PersonAnalysisOptions options) async {
    if (options.meetings.isEmpty) {
      emit(const PersonAttendanceAnalysisEmpty());

      return;
    }

    emit(const PersonAttendanceAnalysisLoading());

    try {
      final analyses = await _dao.getPersonAttendanceAnalysis(
        personId: _personId,
        range: options.dateRange,
        meetings: options.meetings,
        asServant: _asServant,
      );

      emit(PersonAttendanceAnalysisLoaded(analyses));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(PersonAttendanceAnalysisError(error));
    }
  }
}
