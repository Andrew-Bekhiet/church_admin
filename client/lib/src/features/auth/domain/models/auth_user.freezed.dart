// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUser {
  String get uid;
  String get email;
  bool get emailVerified;
  String get idToken;
  Map<String, dynamic> get claims;
  bool get isMultiFactorEnabled;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<AuthUser> get copyWith =>
      _$AuthUserCopyWithImpl<AuthUser>(this as AuthUser, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            const DeepCollectionEquality().equals(other.claims, claims) &&
            (identical(other.isMultiFactorEnabled, isMultiFactorEnabled) ||
                other.isMultiFactorEnabled == isMultiFactorEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      email,
      emailVerified,
      idToken,
      const DeepCollectionEquality().hash(claims),
      isMultiFactorEnabled);
}

/// @nodoc
abstract mixin class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) _then) =
      _$AuthUserCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String email,
      bool emailVerified,
      String idToken,
      Map<String, dynamic> claims,
      bool isMultiFactorEnabled});
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
    Object? isMultiFactorEnabled = null,
  }) {
    return _then(AuthUser(
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
      isMultiFactorEnabled: null == isMultiFactorEnabled
          ? _self.isMultiFactorEnabled
          : isMultiFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
