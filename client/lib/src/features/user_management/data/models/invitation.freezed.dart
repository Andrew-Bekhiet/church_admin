// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invitation {
  String get id;
  String get userUid;
  String get code;
  DateTime get createdAt;
  DateTime get expiresAt;
  DateTime? get claimedAt;

  /// Create a copy of Invitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvitationCopyWith<Invitation> get copyWith =>
      _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invitation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.claimedAt, claimedAt) ||
                other.claimedAt == claimedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userUid,
    code,
    createdAt,
    expiresAt,
    claimedAt,
  );

  @override
  String toString() {
    return 'Invitation(id: $id, userUid: $userUid, code: $code, createdAt: $createdAt, expiresAt: $expiresAt, claimedAt: $claimedAt)';
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
