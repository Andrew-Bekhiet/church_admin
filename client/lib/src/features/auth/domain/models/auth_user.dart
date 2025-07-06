import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@Freezed(toStringOverride: false)
@JsonSerializable()
class AuthUser with _$AuthUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final bool emailVerified;
  @override
  final String idToken;
  @override
  final Map<String, dynamic> claims;
  @override
  final bool isMultiFactorEnabled;

  const AuthUser({
    required this.uid,
    required this.email,
    required this.emailVerified,
    required this.idToken,
    this.claims = const {},
    this.isMultiFactorEnabled = false,
  });

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
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
