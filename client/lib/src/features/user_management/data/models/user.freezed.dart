// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as User;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.uid, _this.uid) || other.uid == _this.uid) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.email, _this.email) ||
                other.email == _this.email) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            const DeepCollectionEquality().equals(
              other.adminOn,
              _this.adminOn,
            ) &&
            const DeepCollectionEquality().equals(
              other.permissions,
              _this.permissions,
            ) &&
            (identical(other.authId, _this.authId) ||
                other.authId == _this.authId) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            (identical(other.person, _this.person) ||
                other.person == _this.person) &&
            (identical(other.preferences, _this.preferences) ||
                other.preferences == _this.preferences) &&
            const DeepCollectionEquality().equals(
              other.fcmTokens,
              _this.fcmTokens,
            ) &&
            const DeepCollectionEquality().equals(
              other.servicesHistory,
              _this.servicesHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.classesHistory,
              _this.classesHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.groupsHistory,
              _this.groupsHistory,
            ) &&
            (identical(other.invitation, _this.invitation) ||
                other.invitation == _this.invitation) &&
            (identical(
                  other.currentUserCanManageThisUser,
                  _this.currentUserCanManageThisUser,
                ) ||
                other.currentUserCanManageThisUser ==
                    _this.currentUserCanManageThisUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as User;
    return Object.hash(
      runtimeType,
      _this.uid,
      _this.name,
      _this.email,
      _this.photoUpdatedAt,
      _this.blurhash,
      const DeepCollectionEquality().hash(_this.adminOn),
      const DeepCollectionEquality().hash(_this.permissions),
      _this.authId,
      _this.lastEdit,
      _this.person,
      _this.preferences,
      const DeepCollectionEquality().hash(_this.fcmTokens),
      const DeepCollectionEquality().hash(_this.servicesHistory),
      const DeepCollectionEquality().hash(_this.classesHistory),
      const DeepCollectionEquality().hash(_this.groupsHistory),
      _this.invitation,
      _this.currentUserCanManageThisUser,
    );
  }

  @override
  String toString() {
    final _this = this as User;
    return 'User(uid: ${_this.uid}, name: ${_this.name}, email: ${_this.email}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, adminOn: ${_this.adminOn}, permissions: ${_this.permissions}, authId: ${_this.authId}, lastEdit: ${_this.lastEdit}, person: ${_this.person}, preferences: ${_this.preferences}, fcmTokens: ${_this.fcmTokens}, servicesHistory: ${_this.servicesHistory}, classesHistory: ${_this.classesHistory}, groupsHistory: ${_this.groupsHistory}, invitation: ${_this.invitation}, currentUserCanManageThisUser: ${_this.currentUserCanManageThisUser})';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call({
    String uid,
    String name,
    PermissionsSet permissions,
    List<FcmToken> fcmTokens,
    bool currentUserCanManageThisUser,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<AdminOnData>? adminOn,
    String? authId,
    LastRecordedByInfo? lastEdit,
    Person? person,
    UserPreferences? preferences,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
    Invitation? invitation,
  });

  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $PersonCopyWith<$Res>? get person;
  $UserPreferencesCopyWith<$Res>? get preferences;
  $InvitationCopyWith<$Res>? get invitation;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? permissions = null,
    Object? fcmTokens = null,
    Object? currentUserCanManageThisUser = null,
    Object? email = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? adminOn = freezed,
    Object? authId = freezed,
    Object? lastEdit = freezed,
    Object? person = freezed,
    Object? preferences = freezed,
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
    Object? invitation = freezed,
  }) {
    return _then(
      User(
        uid: null == uid
            ? _self.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        permissions: null == permissions
            ? _self.permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as PermissionsSet,
        fcmTokens: null == fcmTokens
            ? _self.fcmTokens
            : fcmTokens // ignore: cast_nullable_to_non_nullable
                  as List<FcmToken>,
        currentUserCanManageThisUser: null == currentUserCanManageThisUser
            ? _self.currentUserCanManageThisUser
            : currentUserCanManageThisUser // ignore: cast_nullable_to_non_nullable
                  as bool,
        email: freezed == email
            ? _self.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoUpdatedAt: freezed == photoUpdatedAt
            ? _self.photoUpdatedAt
            : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        blurhash: freezed == blurhash
            ? _self.blurhash
            : blurhash // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminOn: freezed == adminOn
            ? _self.adminOn
            : adminOn // ignore: cast_nullable_to_non_nullable
                  as List<AdminOnData>?,
        authId: freezed == authId
            ? _self.authId
            : authId // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        person: freezed == person
            ? _self.person
            : person // ignore: cast_nullable_to_non_nullable
                  as Person?,
        preferences: freezed == preferences
            ? _self.preferences
            : preferences // ignore: cast_nullable_to_non_nullable
                  as UserPreferences?,
        servicesHistory: freezed == servicesHistory
            ? _self.servicesHistory
            : servicesHistory // ignore: cast_nullable_to_non_nullable
                  as List<AdminOnData>?,
        classesHistory: freezed == classesHistory
            ? _self.classesHistory
            : classesHistory // ignore: cast_nullable_to_non_nullable
                  as List<AdminOnData>?,
        groupsHistory: freezed == groupsHistory
            ? _self.groupsHistory
            : groupsHistory // ignore: cast_nullable_to_non_nullable
                  as List<AdminOnData>?,
        invitation: freezed == invitation
            ? _self.invitation
            : invitation // ignore: cast_nullable_to_non_nullable
                  as Invitation?,
      ),
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_self.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_self.person!, (value) {
      return _then(_self.copyWith(person: value));
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
      return null;
    }

    return $UserPreferencesCopyWith<$Res>(_self.preferences!, (value) {
      return _then(_self.copyWith(preferences: value));
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvitationCopyWith<$Res>? get invitation {
    if (_self.invitation == null) {
      return null;
    }

    return $InvitationCopyWith<$Res>(_self.invitation!, (value) {
      return _then(_self.copyWith(invitation: value));
    });
  }
}
