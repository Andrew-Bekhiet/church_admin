import 'package:church_admin/church_admin.dart';

String? familyValidator(Family? family, Address? address, bool isCreate) {
  if (family == null && address == null) {
    return 'يجب تحديد العائلة${isCreate ? ' أو العنوان' : ''}';
  }

  return null;
}
