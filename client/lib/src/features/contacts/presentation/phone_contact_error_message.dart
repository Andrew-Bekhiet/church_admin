import 'package:church_admin/church_admin.dart';

extension PhoneContactErrorMessage on PhoneContactError {
  String get message => switch (this) {
    PhoneContactError.invalidPhone => 'برجاء ادخال رقم هاتف صالح',
    PhoneContactError.duplicatePhone => 'هذا الرقم مضاف بالفعل',
    PhoneContactError.roleNeedsFamily =>
      'يجب تحديد العائلة أو عنوانها لحفظ أرقام الأسرة',
  };
}
