import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// `asServant: true` returns meetings served in; otherwise meetings attended.
class PersonMeetingsCubit extends Cubit<PersonMeetingsState> {
  final MeetingsDAO _dao;
  final String _personId;
  final bool? _asServant;

  PersonMeetingsCubit({
    required String personId,
    bool? asServant,
    MeetingsDAO? dao,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _personId = personId,
       _asServant = asServant,
       super(const PersonMeetingsLoading()) {
    unawaited(load());
  }

  Future<void> load() async {
    emit(const PersonMeetingsLoading());

    try {
      final meetings = await _dao.getPersonMeetings(
        personId: _personId,
        asServant: _asServant,
      );

      emit(PersonMeetingsLoaded(meetings));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(PersonMeetingsError(error));
    }
  }
}
