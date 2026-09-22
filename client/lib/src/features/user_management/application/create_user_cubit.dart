import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class CreateUserCubit extends UserFormCubit {
  final FunctionsService _functions;

  CreateUserCubit({required UserDraft initial, FunctionsService? functions})
    : _functions = functions ?? FunctionsService.I,
      super(initial);

  @override
  @protected
  Future<String> persist(UserDraft draft) =>
      _functions.createUser(CreateUserRequest.fromDraft(draft));
}
