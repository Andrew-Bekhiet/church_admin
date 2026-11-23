// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAccess {
  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAccessCopyWith<UserAccess> get copyWith =>
      _$UserAccessCopyWithImpl<UserAccess>(this as UserAccess, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as UserAccess;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAccess &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            const DeepCollectionEquality().equals(
              other.permissions,
              _this.permissions,
            ) &&
            const DeepCollectionEquality().equals(
              other.adminOn,
              _this.adminOn,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as UserAccess;
    return Object.hash(
      runtimeType,
      _this.uid,
      const DeepCollectionEquality().hash(_this.permissions),
      const DeepCollectionEquality().hash(_this.adminOn),
    );
  }

  @override
  String toString() {
    final _this = this as UserAccess;
    return 'UserAccess(uid: ${_this.uid}, permissions: ${_this.permissions}, adminOn: ${_this.adminOn})';
  }
}

/// @nodoc
abstract mixin class $UserAccessCopyWith<$Res> {
  factory $UserAccessCopyWith(
    UserAccess value,
    $Res Function(UserAccess) _then,
  ) = _$UserAccessCopyWithImpl;
  @useResult
  $Res call({String uid, Set<String> permissions, Set<String> adminOn});
}

/// @nodoc
class _$UserAccessCopyWithImpl<$Res> implements $UserAccessCopyWith<$Res> {
  _$UserAccessCopyWithImpl(this._self, this._then);

  final UserAccess _self;
  final $Res Function(UserAccess) _then;

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? permissions = null,
    Object? adminOn = null,
  }) {
    return _then(
      UserAccess(
        uid: null == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        permissions: null == permissions
            ? _self.permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
        adminOn: null == adminOn
            ? _self.adminOn
            : adminOn // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
      ),
    );
  }
}
