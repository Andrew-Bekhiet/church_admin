import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class MeetingsAnalysisState with Equatable {
  @override
  List<Object?> get props => [];
  const MeetingsAnalysisState();
}

final class MeetingsAnalysisLoading extends MeetingsAnalysisState {
  const MeetingsAnalysisLoading();
}

final class MeetingsAnalysisLoaded extends MeetingsAnalysisState {
  final MeetingsAttendanceAnalysis analysis;

  @override
  List<Object?> get props => [analysis];

  const MeetingsAnalysisLoaded(this.analysis);
}

final class MeetingsAnalysisError extends MeetingsAnalysisState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const MeetingsAnalysisError(this.error);
}
