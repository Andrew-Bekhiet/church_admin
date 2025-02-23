import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String uid,
    required String email,
    required bool emailVerified,
    required String idToken,
    @JsonKey(defaultValue: {}) required Map<String, dynamic> claims,
    @Default(false) bool isMultiFactorEnabled,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
