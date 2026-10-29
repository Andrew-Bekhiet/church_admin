import 'package:church_admin/church_admin.dart';

sealed class HistoryTracking {
  const HistoryTracking();
}

final class TrackedHistory extends HistoryTracking {
  final HistoryKind kind;
  final ViewableWithID owner;

  const TrackedHistory(this.kind, this.owner);
}

final class UntrackedHistory extends HistoryTracking {
  const UntrackedHistory();
}
