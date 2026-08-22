import 'package:church_admin/church_admin.dart';

String? personGeneralCheckValidator(Person person, [dynamic _]) {
  return person.address == null &&
          (person.family == null || person.familyId == null) &&
          (person.services?.isEmpty ?? true) &&
          (person.groups?.isEmpty ?? true)
      ? 'يجب تحديد على الأقل واحد من الآتي:\n'
            '(العنوان - العائلة - خدمة أو أكثر - مجموعة أو أكثر)'
      : null;
}
