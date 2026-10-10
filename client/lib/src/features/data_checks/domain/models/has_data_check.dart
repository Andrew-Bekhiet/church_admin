import 'package:church_admin/church_admin.dart';

abstract interface class HasDataCheck {
  DataCheck? get dataCheck;

  bool get userCanEdit;
}
