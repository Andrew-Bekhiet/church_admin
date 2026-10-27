import 'package:church_admin/church_admin.dart';

extension PhoneContactLabelText on PhoneContactLabel {
  String get text => switch (this) {
    FreePhoneContactLabel(:final text) => text ?? 'رقم الهاتف',
    RolePhoneContactLabel(:final role) => 'رقم الهاتف (${role.name})',
  };
}
