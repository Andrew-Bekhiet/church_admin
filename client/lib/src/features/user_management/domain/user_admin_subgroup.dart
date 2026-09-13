import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class UserAdminSubgroup with Equatable {
  final String? title;
  final List<User> users;

  @override
  List<Object?> get props => [title, users];

  const UserAdminSubgroup({
    required this.users,
    this.title,
  });
}
