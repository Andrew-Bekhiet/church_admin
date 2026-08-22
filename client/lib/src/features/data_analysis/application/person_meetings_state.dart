import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PersonMeetingsState with Equatable {
  @override
  List<Object?> get props => [];
  const PersonMeetingsState();
}

final class PersonMeetingsLoading extends PersonMeetingsState {
  const PersonMeetingsLoading();
}

final class PersonMeetingsLoaded extends PersonMeetingsState {
  final List<Meeting> meetings;

  @override
  List<Object?> get props => [meetings];

  const PersonMeetingsLoaded(this.meetings);
}

final class PersonMeetingsError extends PersonMeetingsState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const PersonMeetingsError(this.error);
}
