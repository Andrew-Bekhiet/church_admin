import 'package:church_admin/church_admin.dart';

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue.fromString(this);
}
