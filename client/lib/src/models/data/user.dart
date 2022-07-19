// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends UID with _$User {
  const factory User({
    required String uid,
    @JsonKey(
      fromJson: permissionsSetFromJson,
      toJson: permissionsSetToJson,
    )
        required CAPermissionsSet permissions,
    required String email,
    required String firebaseAuthUID,
    @JsonKey(ignore: true)
        String? password,
    DateTime? photoUpdatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
