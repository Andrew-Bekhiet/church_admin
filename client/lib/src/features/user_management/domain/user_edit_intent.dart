import 'package:church_admin/church_admin.dart';

sealed class UserEditIntent {
  const UserEditIntent();
}

final class CreateUser extends UserEditIntent {
  final UserDraft initial;

  const CreateUser({this.initial = const UserDraft.empty()});
}

final class UpdateUser extends UserEditIntent {
  final User user;

  const UpdateUser({required this.user});
}
