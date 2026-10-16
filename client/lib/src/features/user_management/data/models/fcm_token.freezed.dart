// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmToken {
  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FcmTokenCopyWith<FcmToken> get copyWith =>
      _$FcmTokenCopyWithImpl<FcmToken>(this as FcmToken, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as FcmToken;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FcmToken &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            (identical(other.token, _this.token) ||
                other.token == _this.token) &&
            (identical(other.createdAt, _this.createdAt) ||
                other.createdAt == _this.createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as FcmToken;
    return Object.hash(runtimeType, _this.uid, _this.token, _this.createdAt);
  }

  @override
  String toString() {
    final _this = this as FcmToken;
    return 'FcmToken(uid: ${_this.uid}, token: ${_this.token}, createdAt: ${_this.createdAt})';
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
