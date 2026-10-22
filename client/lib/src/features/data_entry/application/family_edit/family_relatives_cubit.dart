import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FamilyRelativesCubit extends Cubit<FamilyRelativesLoadState> {
  final FamilyFormController _form;
  final FamiliesDAO _familiesDAO;
  final LoggingService _logging;

  FamilyRelativesCubit({
    required this._form,
    required this._familiesDAO,
    required this._logging,
  }) : super(
         _form.isCreate
             ? const FamilyRelativesLoaded()
             : const FamilyRelativesLoading(),
       );

  Future<void> loadSavedRelatives() async {
    final saved = _form.savedObject;
    if (saved == null) return;

    try {
      final loaded = await _familiesDAO.getFamilyRelatedFamilies(
        familyId: saved.id,
      );
      if (isClosed || _form.isDisposed) return;

      if (loaded != null) _form.useLoadedRelatives(loaded);
      emit(const FamilyRelativesLoaded());
    } on Exception catch (error, stackTrace) {
      unawaited(
        _logging.exception(
          LogRecord(
            moduleName: '$FamilyRelativesCubit',
            eventName: 'loadSavedRelatives',
            error: error,
            stackTrace: stackTrace,
          ),
        ),
      );
      if (isClosed) return;

      emit(const FamilyRelativesFailedToLoad());
    }
  }
}
