// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String get uid;
  String get name;
  String? get email;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<AdminOnData>? get adminOn;
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  PermissionsSet get permissions;
  String? get authId;
  LastRecordedByInfo? get lastEdit;
  Person? get person;
  List<AdminOnData>? get servicesHistory;
  List<AdminOnData>? get classesHistory;
  List<AdminOnData>? get groupsHistory;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

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
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.person, person) || other.person == person) &&
            const DeepCollectionEquality()
                .equals(other.servicesHistory, servicesHistory) &&
            const DeepCollectionEquality()
                .equals(other.classesHistory, classesHistory) &&
            const DeepCollectionEquality()
                .equals(other.groupsHistory, groupsHistory));
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
      const DeepCollectionEquality().hash(servicesHistory),
      const DeepCollectionEquality().hash(classesHistory),
      const DeepCollectionEquality().hash(groupsHistory));

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, email: $email, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, adminOn: $adminOn, permissions: $permissions, authId: $authId, lastEdit: $lastEdit, person: $person, servicesHistory: $servicesHistory, classesHistory: $classesHistory, groupsHistory: $groupsHistory)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String name,
      String? email,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      PermissionsSet permissions,
      String? authId,
      LastRecordedByInfo? lastEdit,
      Person? person,
      List<AdminOnData>? servicesHistory,
      List<AdminOnData>? classesHistory,
      List<AdminOnData>? groupsHistory});

  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $PersonCopyWith<$Res>? get person;
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
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
  }) {
    return _then(_self.copyWith(
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
    ));
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
}

/// @nodoc
@JsonSerializable()
class _User extends User {
  _User(
      {required this.uid,
      required this.name,
      this.email,
      this.photoUpdatedAt,
      this.blurhash,
      final List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      this.permissions = const PermissionsSet.empty(),
      this.authId,
      this.lastEdit,
      this.person,
      final List<AdminOnData>? servicesHistory,
      final List<AdminOnData>? classesHistory,
      final List<AdminOnData>? groupsHistory})
      : _adminOn = adminOn,
        _servicesHistory = servicesHistory,
        _classesHistory = classesHistory,
        _groupsHistory = groupsHistory,
        super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String? email;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  final List<AdminOnData>? _adminOn;
  @override
  List<AdminOnData>? get adminOn {
    final value = _adminOn;
    if (value == null) return null;
    if (_adminOn is EqualUnmodifiableListView) return _adminOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  final PermissionsSet permissions;
  @override
  final String? authId;
  @override
  final LastRecordedByInfo? lastEdit;
  @override
  final Person? person;
  final List<AdminOnData>? _servicesHistory;
  @override
  List<AdminOnData>? get servicesHistory {
    final value = _servicesHistory;
    if (value == null) return null;
    if (_servicesHistory is EqualUnmodifiableListView) return _servicesHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdminOnData>? _classesHistory;
  @override
  List<AdminOnData>? get classesHistory {
    final value = _classesHistory;
    if (value == null) return null;
    if (_classesHistory is EqualUnmodifiableListView) return _classesHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdminOnData>? _groupsHistory;
  @override
  List<AdminOnData>? get groupsHistory {
    final value = _groupsHistory;
    if (value == null) return null;
    if (_groupsHistory is EqualUnmodifiableListView) return _groupsHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other._adminOn, _adminOn) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.person, person) || other.person == person) &&
            const DeepCollectionEquality()
                .equals(other._servicesHistory, _servicesHistory) &&
            const DeepCollectionEquality()
                .equals(other._classesHistory, _classesHistory) &&
            const DeepCollectionEquality()
                .equals(other._groupsHistory, _groupsHistory));
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
      const DeepCollectionEquality().hash(_adminOn),
      const DeepCollectionEquality().hash(permissions),
      authId,
      lastEdit,
      person,
      const DeepCollectionEquality().hash(_servicesHistory),
      const DeepCollectionEquality().hash(_classesHistory),
      const DeepCollectionEquality().hash(_groupsHistory));

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, email: $email, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, adminOn: $adminOn, permissions: $permissions, authId: $authId, lastEdit: $lastEdit, person: $person, servicesHistory: $servicesHistory, classesHistory: $classesHistory, groupsHistory: $groupsHistory)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String? email,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      PermissionsSet permissions,
      String? authId,
      LastRecordedByInfo? lastEdit,
      Person? person,
      List<AdminOnData>? servicesHistory,
      List<AdminOnData>? classesHistory,
      List<AdminOnData>? groupsHistory});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
  }) {
    return _then(_User(
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
          ? _self._adminOn
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
      servicesHistory: freezed == servicesHistory
          ? _self._servicesHistory
          : servicesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      classesHistory: freezed == classesHistory
          ? _self._classesHistory
          : classesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      groupsHistory: freezed == groupsHistory
          ? _self._groupsHistory
          : groupsHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
    ));
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
}

// dart format on
