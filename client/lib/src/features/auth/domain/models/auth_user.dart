import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@Freezed(toStringOverride: false)
@JsonSerializable()
class AuthUser with _$AuthUser {
  static const String hasuraUserIdKey = 'x-hasura-user-id';

  @override
  final String uid;
  @override
  final String email;
  @override
  final String idToken;
  @override
  final Map<String, dynamic> claims;

  @JsonKey(includeFromJson: false, includeToJson: false)
  Map<String, dynamic> get filteredClaims => _filterClaims(claims);

  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get hasuraUserId => claims[hasuraUserIdKey] as String?;

  const AuthUser({
    required this.uid,
    required this.email,
    required this.idToken,
    this.claims = const {},
  });

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserToJson(this);

  Map<String, dynamic> _filterClaims(Map<String, dynamic> claims) {
    return {...claims, 'password': claims['password'] != null ? '***' : null};
  }

  @override
  String toString() =>
      'AuthUser(uid: $uid, '
      'email: $email, '
      'claims: $filteredClaims)';
}
