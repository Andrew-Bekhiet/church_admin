import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class CreateUserCubit extends UserFormCubit {
  final UsersDAO _usersDao;

  CreateUserCubit({required UserDraft initial, UsersDAO? usersDao})
    : _usersDao = usersDao ?? DatabaseService.I.users,
      super(initial);

  @override
  @protected
  Future<String> persist(UserDraft draft) =>
      _usersDao.createUser(CreateUserRequest.fromDraft(draft));
}
