import 'package:church_admin/church_admin.dart';

extension DataCheckOverrideErrorMessage on DataCheckOverrideError {
  String get message => switch (this) {
    DataCheckOverrideError.notPermitted =>
      'لا تملك صلاحية تعديل حالة هذه العائلة',
    DataCheckOverrideError.saveFailed => 'تعذر حفظ التعديل، حاول مرة أخرى',
  };
}
