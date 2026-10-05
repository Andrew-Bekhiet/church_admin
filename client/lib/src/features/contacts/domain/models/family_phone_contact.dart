import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FamilyPhoneContact with Equatable {
  final PhoneContact contact;
  final PersonType role;

  String get roleLabel => 'رقم الهاتف (${role.name})';

  @override
  List<Object?> get props => [contact, role];

  const FamilyPhoneContact({required this.contact, required this.role});
}
