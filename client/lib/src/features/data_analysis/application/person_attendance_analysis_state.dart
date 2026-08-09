import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PersonAttendanceAnalysisState with Equatable {
  @override
  List<Object?> get props => [];
  const PersonAttendanceAnalysisState();
}

final class PersonAttendanceAnalysisLoading
    extends PersonAttendanceAnalysisState {
  const PersonAttendanceAnalysisLoading();
}

final class PersonAttendanceAnalysisEmpty
    extends PersonAttendanceAnalysisState {
  const PersonAttendanceAnalysisEmpty();
}

final class PersonAttendanceAnalysisLoaded
    extends PersonAttendanceAnalysisState {
  final List<PersonMeetingAttendanceAnalysis> analyses;

  @override
  List<Object?> get props => [analyses];

  const PersonAttendanceAnalysisLoaded(this.analyses);
}

final class PersonAttendanceAnalysisError
    extends PersonAttendanceAnalysisState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const PersonAttendanceAnalysisError(this.error);
}
