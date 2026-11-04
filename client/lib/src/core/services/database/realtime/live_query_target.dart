import 'package:church_admin/church_admin.dart';

/// A query result that the registry keeps fresh.
abstract interface class LiveQueryTarget {
  bool get isListened;

  Future<void> refetch();

  void onLiveResult(LiveResult result);
}
