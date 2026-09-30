import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PersonPhoneBook with EquatableMixin {
  final List<PhoneContact> own;
  final List<FamilyPhoneContact> family;

  List<PhoneContact> get ownMainFirst => [
    ...own.where((c) => c.isMainPhone),
    ...own.where((c) => !c.isMainPhone),
  ];

  @override
  List<Object?> get props => [own, family];

  const PersonPhoneBook({this.own = const [], this.family = const []});
}
