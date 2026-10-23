import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeetingsAnalysisCubit extends Cubit<MeetingsAnalysisState> {
  final MeetingsDAO _dao;
  final ClassesDAO _classesDao;
  final AnalyticsService _analyticsService;
  final MeetingsAnalysisSubject subject;

  MeetingsAnalysisCubit({
    required this.subject,
    required DateTimeRangePreset initialRangePreset,
    MeetingsDAO? dao,
    ClassesDAO? classesDao,
    AnalyticsService? analyticsService,
  }) : _dao = dao ?? DatabaseService.I.meetings,
       _classesDao = classesDao ?? DatabaseService.I.classes,
       _analyticsService = analyticsService ?? AnalyticsService.I,
       super(const MeetingsAnalysisLoading()) {
    unawaited(load(initialRangePreset));
  }

  // TODO: Implement one graphql query that fetches all the needed data
  // instead of 3 queries
  // Ideally, all the needed data should be fetched in one gql query
  Future<void> load(DateTimeRangePreset rangePreset) async {
    emit(const MeetingsAnalysisLoading());

    try {
      emit(MeetingsAnalysisLoaded(await _analysisOf(rangePreset.range)));
      _trackView(rangePreset, isSuccess: true);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(MeetingsAnalysisError(error));
      _trackView(rangePreset, isSuccess: false);
    }
  }

  Future<MeetingsAttendanceAnalysis> _analysisOf(DateTimeRange range) async {
    final analysis = await _dao.getMeetingsAttendanceAnalysis(
      subject: subject,
      range: range,
    );

    if (!range.isSingleDay) return analysis;

    final (rosterMembers, classes) = await (
      _dao.getSingleDayRosterDemographics(
        subject: subject,
        day: range.start,
      ),
      _loadClasses(),
    ).wait;

    return SingleDayMeetingsAttendanceAnalysis(
      title: subject.title,
      color: subject.color,
      meetings: analysis.meetings,
      rosterMembers: rosterMembers,
      classes: classes,
    );
  }

  void _trackView(DateTimeRangePreset rangePreset, {required bool isSuccess}) =>
      _analyticsService.track(
        MeetingsAnalysisView(
          subject: subject,
          rangePreset: rangePreset,
          isSuccess: isSuccess,
        ),
      );

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
