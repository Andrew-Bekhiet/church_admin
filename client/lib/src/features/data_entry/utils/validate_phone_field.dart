import 'package:church_admin/church_admin.dart';

String? validatePhoneField(String? value) =>
    value != null && !PhoneNumberService.I.validate(value)
    ? 'برجاء ادخال رقم هاتف صالح'
    : null;
