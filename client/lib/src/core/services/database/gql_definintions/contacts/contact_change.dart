import 'package:church_admin/church_admin.dart';

class ContactChange {
  final PhoneContact old;
  final PhoneContact updated;

  bool get ownerChanged => old.owner != updated.owner;

  bool get losesMain => old.isMainPhone && !updated.isMainPhone;

  bool get changesBeyondLosingMain =>
      old.ownLabel != updated.ownLabel ||
      old.phone != updated.phone ||
      (updated.isMainPhone && !old.isMainPhone);

  const ContactChange({required this.old, required this.updated});
}
