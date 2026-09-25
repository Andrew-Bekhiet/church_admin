import 'package:church_admin/church_admin.dart';

sealed class UserEditIntent extends SerializableExtra {
  static const String _kindKey = 'kind';
  static const String _userKey = 'user';

  @override
  String get typeName => 'UserEditIntent';

  const UserEditIntent();

  factory UserEditIntent.fromJson(Json json) => switch (json[_kindKey]) {
    'update' => UpdateUser(user: User.fromJson(json[_userKey] as Json)),
    _ => const CreateUser(),
  };

  @override
  Json toJson() => switch (this) {
    CreateUser() => {_kindKey: 'create'},
    UpdateUser(:final user) => {_kindKey: 'update', _userKey: user.toJson()},
  };
}

final class CreateUser extends UserEditIntent {
  const CreateUser();
}

final class UpdateUser extends UserEditIntent {
  final User user;

  const UpdateUser({required this.user});
}
