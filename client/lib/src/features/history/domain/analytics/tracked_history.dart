import 'package:church_admin/church_admin.dart';

class TrackedHistory {
  final HistoryKind kind;
  final ViewableWithID owner;

  const TrackedHistory(this.kind, this.owner);
}

enum HistoryKind { kodas, confession, visit, fatherVisit, call, edit }
