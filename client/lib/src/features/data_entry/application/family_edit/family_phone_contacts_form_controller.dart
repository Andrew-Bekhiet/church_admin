import 'package:church_admin/church_admin.dart';

class FamilyPhoneContactsFormController extends PhoneContactsFormController {
  @override
  bool get familyOnly => true;

  FamilyPhoneContactsFormController({
    required List<FamilyPhoneContact> saved,
  }) : super(own: const [], family: saved);
}
