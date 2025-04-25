import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@Freezed(toStringOverride: false)
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String uid,
    required String email,
    required bool emailVerified,
    required String idToken,
    @JsonKey(defaultValue: {}) required Map<String, dynamic> claims,
    @Default(false) bool isMultiFactorEnabled,
  }) = _AuthUser;
  const AuthUser._();

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);

  Map<String, dynamic> get filteredClaims => _filterClaims(claims);

  Map<String, dynamic> _filterClaims(Map<String, dynamic> claims) {
    return {...claims, 'password': claims['password'] != null ? '***' : null};
  }

  @override
  String toString() => 'AuthUser(uid: $uid, '
      'email: $email, '
      'emailVerified: $emailVerified, '
      'claims: $filteredClaims, '
      'isMultiFactorEnabled: $isMultiFactorEnabled)';
}
