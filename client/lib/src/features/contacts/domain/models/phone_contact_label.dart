import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PhoneContactLabel with Equatable {
  const PhoneContactLabel();
}

final class FreePhoneContactLabel extends PhoneContactLabel {
  final String? text;

  @override
  List<Object?> get props => [text];

  const FreePhoneContactLabel(this.text);
}

final class RolePhoneContactLabel extends PhoneContactLabel {
  final PersonType role;

  @override
  List<Object?> get props => [role.id];

  const RolePhoneContactLabel(this.role);
}
