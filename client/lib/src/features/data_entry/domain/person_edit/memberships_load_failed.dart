part of 'memberships_load_state.dart';

final class MembershipsLoadFailed extends MembershipsLoadState {
  final Object error;
  final StackTrace stackTrace;

  const MembershipsLoadFailed({required this.error, required this.stackTrace});
}
