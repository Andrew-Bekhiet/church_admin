import 'package:church_admin/church_admin.dart';

extension JsonNonNullPairs on Json {
  Map<String, Object> get nonNullPairs => {
    for (final entry in entries)
      if (entry.value case final Object value) entry.key: value,
  };
}
