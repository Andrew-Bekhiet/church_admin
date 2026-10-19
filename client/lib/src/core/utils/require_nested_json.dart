import 'package:church_admin/church_admin.dart';

Json requireNestedJson(
  Object? value, {
  required String owner,
  required Object? kind,
}) {
  if (value is! Map<Object?, Object?>) {
    throw FormatException('$owner kind "$kind" has no nested data');
  }

  return Map<String, Object?>.from(value);
}
