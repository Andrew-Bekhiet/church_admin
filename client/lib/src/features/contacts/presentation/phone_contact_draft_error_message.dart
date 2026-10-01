import 'package:church_admin/church_admin.dart';

extension PhoneContactDraftErrorMessage on PhoneContactDraftError {
  String get message => switch (this) {
    PhoneContactDraftError.invalidPhone => 'برجاء ادخال رقم هاتف صالح',
    PhoneContactDraftError.duplicatePhone => 'هذا الرقم مضاف بالفعل',
    PhoneContactDraftError.roleNeedsFamily =>
      'يجب تحديد العائلة أو عنوانها لحفظ أرقام الأسرة',
  };
}

extension PhoneContactLabelText on PhoneContactLabel {
  String get text => switch (this) {
    FreePhoneContactLabel(:final text) => text ?? 'رقم الهاتف',
    RolePhoneContactLabel(:final role) => 'رقم الهاتف (${role.name})',
  };
}
