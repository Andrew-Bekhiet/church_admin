import 'package:church_admin/church_admin.dart';

IterableDifferenceResult<T> diff<T>(Set<T> old, Set<T> $new) {
  return IterableDifferenceResult(
    removed: old.where((s) => !$new.contains(s)).toSet(),
    added: $new.where((s) => !old.contains(s)).toSet(),
  );
}
