import 'package:church_admin/church_admin.dart';

sealed class MembershipsLoadState {
  const MembershipsLoadState();
}

final class MembershipsLoadFailed extends MembershipsLoadState {
  final Object error;
  final StackTrace stackTrace;

  const MembershipsLoadFailed({required this.error, required this.stackTrace});
}

final class MembershipsLoaded extends MembershipsLoadState {
  final List<Class>? classes;

  const MembershipsLoaded({required this.classes});
}

final class MembershipsLoading extends MembershipsLoadState {
  const MembershipsLoading();
}
