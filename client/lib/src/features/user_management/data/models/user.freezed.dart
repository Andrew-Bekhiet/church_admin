// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String get uid;
  String get name;
  String? get email;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<AdminOnData>? get adminOn;
  PermissionsSet get permissions;
  String? get authId;
  LastRecordedByInfo? get lastEdit;
  Person? get person;
  UserPreferences? get preferences;
  List<FcmToken> get fcmTokens;
  List<AdminOnData>? get servicesHistory;
  List<AdminOnData>? get classesHistory;
  List<AdminOnData>? get groupsHistory;
  bool get currentUserCanManageThisUser;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.adminOn, adminOn) &&
            const DeepCollectionEquality().equals(
              other.permissions,
              permissions,
            ) &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            const DeepCollectionEquality().equals(other.fcmTokens, fcmTokens) &&
            const DeepCollectionEquality().equals(
              other.servicesHistory,
              servicesHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.classesHistory,
              classesHistory,
            ) &&
            const DeepCollectionEquality().equals(
              other.groupsHistory,
              groupsHistory,
            ) &&
            (identical(
                  other.currentUserCanManageThisUser,
                  currentUserCanManageThisUser,
                ) ||
                other.currentUserCanManageThisUser ==
                    currentUserCanManageThisUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    name,
    email,
    photoUpdatedAt,
    blurhash,
    const DeepCollectionEquality().hash(adminOn),
    const DeepCollectionEquality().hash(permissions),
    authId,
    lastEdit,
    person,
    preferences,
    const DeepCollectionEquality().hash(fcmTokens),
    const DeepCollectionEquality().hash(servicesHistory),
    const DeepCollectionEquality().hash(classesHistory),
    const DeepCollectionEquality().hash(groupsHistory),
    currentUserCanManageThisUser,
  );

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, email: $email, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, adminOn: $adminOn, permissions: $permissions, authId: $authId, lastEdit: $lastEdit, person: $person, preferences: $preferences, fcmTokens: $fcmTokens, servicesHistory: $servicesHistory, classesHistory: $classesHistory, groupsHistory: $groupsHistory, currentUserCanManageThisUser: $currentUserCanManageThisUser)';
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
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<AdminOnData>? adminOn,
    PermissionsSet permissions,
    String? authId,
    LastRecordedByInfo? lastEdit,
    Person? person,
    UserPreferences? preferences,
    List<FcmToken> fcmTokens,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
    bool currentUserCanManageThisUser,
  });
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
    Object? email = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? adminOn = freezed,
    Object? permissions = null,
    Object? authId = freezed,
    Object? lastEdit = freezed,
    Object? person = freezed,
    Object? preferences = freezed,
    Object? fcmTokens = null,
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
    Object? currentUserCanManageThisUser = null,
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
        permissions: null == permissions
            ? _self.permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as PermissionsSet,
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
        fcmTokens: null == fcmTokens
            ? _self.fcmTokens
            : fcmTokens // ignore: cast_nullable_to_non_nullable
                  as List<FcmToken>,
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
        currentUserCanManageThisUser: null == currentUserCanManageThisUser
            ? _self.currentUserCanManageThisUser
            : currentUserCanManageThisUser // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}
