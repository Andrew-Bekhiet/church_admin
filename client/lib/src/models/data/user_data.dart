// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData extends UID with _$UserData {
  const factory UserData({
    required String uid,
    @JsonKey(
      fromJson: permissionsSetFromJson,
      toJson: permissionsSetToJson,
    )
        required CAPermissionsSet permissions,
    required String email,
    required String? firebaseAuthUid,
    @JsonKey(ignore: true)
        String? password,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
