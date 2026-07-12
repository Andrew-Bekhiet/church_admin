import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeetingsAnalysisCubit extends Cubit<MeetingsAnalysisState> {
  final MeetingsDAO _dao;
  final ClassesDAO _classesDao;
  final MeetingsAnalysisSubject subject;

  MeetingsAnalysisCubit({
    required this.subject,
    required DateTimeRange initialRange,
    MeetingsDAO? dao,
    ClassesDAO? classesDao,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _classesDao = classesDao ?? DatabaseService.I.classes,
       super(const MeetingsAnalysisLoading()) {
    unawaited(load(initialRange));
  }

  Future<void> load(DateTimeRange range) async {
    emit(const MeetingsAnalysisLoading());

    try {
      final analysis = await _dao.getMeetingsAttendanceAnalysis(
        subject: subject,
        range: range,
      );

      if (!range.isSingleDay) {
        emit(MeetingsAnalysisLoaded(analysis));
        return;
      }

      final (rosterMembers, classes) = await (
        _dao.getSingleDayRosterDemographics(
          subject: subject,
          day: range.start,
        ),
        _loadClasses(),
      ).wait;

      emit(
        MeetingsAnalysisLoaded(
          SingleDayMeetingsAttendanceAnalysis(
            title: subject.title,
            color: subject.color,
            meetings: analysis.meetings,
            rosterMembers: rosterMembers,
            classes: classes,
          ),
        ),
      );

      return;
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(MeetingsAnalysisError(error));
    }
  }

  // Groups span classes across study years and genders with no clean class
  // mapping, so slices fall back to their grade/gender labels.
  Future<List<Class>> _loadClasses() async => switch (subject) {
    ServiceAnalysisSubject(:final service) => _classesDao.getClassesForService(
      serviceId: service.id,
    ),
    MeetingAnalysisSubject(
      meeting: Meeting(:final serviceId?),
    ) =>
      _classesDao.getClassesForService(serviceId: serviceId),
    MeetingAnalysisSubject(
      meeting: Meeting(service: Service(id: final serviceId)),
    ) =>
      _classesDao.getClassesForService(serviceId: serviceId),
    MeetingAnalysisSubject() => const [],
    ClassAnalysisSubject(:final class$) => [class$],
    GroupAnalysisSubject() => const [],
  };
}
