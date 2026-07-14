// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmToken {
  String get uid;
  String get token;
  DateTime? get createdAt;

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FcmTokenCopyWith<FcmToken> get copyWith =>
      _$FcmTokenCopyWithImpl<FcmToken>(this as FcmToken, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FcmToken &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, token, createdAt);

  @override
  String toString() {
    return 'FcmToken(uid: $uid, token: $token, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $FcmTokenCopyWith<$Res> {
  factory $FcmTokenCopyWith(FcmToken value, $Res Function(FcmToken) _then) =
      _$FcmTokenCopyWithImpl;
  @useResult
  $Res call({String uid, String token, DateTime? createdAt});
}

/// @nodoc
class _$FcmTokenCopyWithImpl<$Res> implements $FcmTokenCopyWith<$Res> {
  _$FcmTokenCopyWithImpl(this._self, this._then);

  final FcmToken _self;
  final $Res Function(FcmToken) _then;

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? token = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      FcmToken(
        uid: null == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        token: null == token
            ? _self.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _self.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}
