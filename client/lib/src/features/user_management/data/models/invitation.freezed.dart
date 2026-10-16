// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invitation {
  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvitationCopyWith<Invitation> get copyWith =>
      _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Invitation;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invitation &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.userUid, _this.userUid) ||
                other.userUid == _this.userUid) &&
            (identical(other.code, _this.code) || other.code == _this.code) &&
            (identical(other.createdAt, _this.createdAt) ||
                other.createdAt == _this.createdAt) &&
            (identical(other.expiresAt, _this.expiresAt) ||
                other.expiresAt == _this.expiresAt) &&
            (identical(other.claimedAt, _this.claimedAt) ||
                other.claimedAt == _this.claimedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Invitation;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.userUid,
      _this.code,
      _this.createdAt,
      _this.expiresAt,
      _this.claimedAt,
    );
  }

  @override
  String toString() {
    final _this = this as Invitation;
    return 'Invitation(id: ${_this.id}, userUid: ${_this.userUid}, code: ${_this.code}, createdAt: ${_this.createdAt}, expiresAt: ${_this.expiresAt}, claimedAt: ${_this.claimedAt})';
  }
}

/// @nodoc
abstract mixin class $InvitationCopyWith<$Res> {
  factory $InvitationCopyWith(
    Invitation value,
    $Res Function(Invitation) _then,
  ) = _$InvitationCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String userUid,
    String code,
    DateTime createdAt,
    DateTime expiresAt,
    DateTime? claimedAt,
  });
}

/// @nodoc
class _$InvitationCopyWithImpl<$Res> implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._self, this._then);

  final Invitation _self;
  final $Res Function(Invitation) _then;

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userUid = null,
    Object? code = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? claimedAt = freezed,
  }) {
    return _then(
      Invitation(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userUid: null == userUid
            ? _self.userUid
            : userUid // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _self.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _self.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        expiresAt: null == expiresAt
            ? _self.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        claimedAt: freezed == claimedAt
            ? _self.claimedAt
            : claimedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}
