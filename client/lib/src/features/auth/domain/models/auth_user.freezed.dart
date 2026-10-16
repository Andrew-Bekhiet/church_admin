// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUser {
  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<AuthUser> get copyWith =>
      _$AuthUserCopyWithImpl<AuthUser>(this as AuthUser, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as AuthUser;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUser &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            (identical(other.email, _this.email) ||
                other.email == _this.email) &&
            (identical(other.emailVerified, _this.emailVerified) ||
                other.emailVerified == _this.emailVerified) &&
            (identical(other.idToken, _this.idToken) ||
                other.idToken == _this.idToken) &&
            const DeepCollectionEquality().equals(other.claims, _this.claims));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as AuthUser;
    return Object.hash(
      runtimeType,
      _this.uid,
      _this.email,
      _this.emailVerified,
      _this.idToken,
      const DeepCollectionEquality().hash(_this.claims),
    );
  }
}

/// @nodoc
abstract mixin class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) _then) =
      _$AuthUserCopyWithImpl;
  @useResult
  $Res call({
    String uid,
    String email,
    bool emailVerified,
    String idToken,
    Map<String, dynamic> claims,
  });
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res> implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._self, this._then);

  final AuthUser _self;
  final $Res Function(AuthUser) _then;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? emailVerified = null,
    Object? idToken = null,
    Object? claims = null,
  }) {
    return _then(
      AuthUser(
        uid: null == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _self.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        emailVerified: null == emailVerified
            ? _self.emailVerified
            : emailVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        idToken: null == idToken
            ? _self.idToken
            : idToken // ignore: cast_nullable_to_non_nullable
                  as String,
        claims: null == claims
            ? _self.claims
            : claims // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}
