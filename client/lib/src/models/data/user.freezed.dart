// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  List<AdminOnData>? get adminOn => throw _privateConstructorUsedError;
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions => throw _privateConstructorUsedError;
  String? get authId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get idToken => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  Person? get person => throw _privateConstructorUsedError;
  List<AdminOnData>? get servicesHistory => throw _privateConstructorUsedError;
  List<AdminOnData>? get classesHistory => throw _privateConstructorUsedError;
  List<AdminOnData>? get groupsHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String? email,
      DateTime? photoUpdatedAt,
      List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String? authId,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? idToken,
      LastRecordedByInfo? lastEdit,
      Person? person,
      List<AdminOnData>? servicesHistory,
      List<AdminOnData>? classesHistory,
      List<AdminOnData>? groupsHistory});

  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = freezed,
    Object? photoUpdatedAt = freezed,
    Object? adminOn = freezed,
    Object? permissions = null,
    Object? authId = freezed,
    Object? password = freezed,
    Object? idToken = freezed,
    Object? lastEdit = freezed,
    Object? person = freezed,
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adminOn: freezed == adminOn
          ? _value.adminOn
          : adminOn // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CAPermissionsSet,
      authId: freezed == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      servicesHistory: freezed == servicesHistory
          ? _value.servicesHistory
          : servicesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      classesHistory: freezed == classesHistory
          ? _value.classesHistory
          : classesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      groupsHistory: freezed == groupsHistory
          ? _value.groupsHistory
          : groupsHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_value.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastEdit!, (value) {
      return _then(_value.copyWith(lastEdit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String? email,
      DateTime? photoUpdatedAt,
      List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String? authId,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? idToken,
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
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = freezed,
    Object? photoUpdatedAt = freezed,
    Object? adminOn = freezed,
    Object? permissions = null,
    Object? authId = freezed,
    Object? password = freezed,
    Object? idToken = freezed,
    Object? lastEdit = freezed,
    Object? person = freezed,
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
  }) {
    return _then(_$_User(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adminOn: freezed == adminOn
          ? _value._adminOn
          : adminOn // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CAPermissionsSet,
      authId: freezed == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      servicesHistory: freezed == servicesHistory
          ? _value._servicesHistory
          : servicesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      classesHistory: freezed == classesHistory
          ? _value._classesHistory
          : classesHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      groupsHistory: freezed == groupsHistory
          ? _value._groupsHistory
          : groupsHistory // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {required this.uid,
      required this.name,
      this.email,
      this.photoUpdatedAt,
      final List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          this.permissions = const CAPermissionsSet.empty(),
      this.authId,
      @JsonKey(includeIfNull: false)
          this.password,
      @JsonKey(includeIfNull: false)
          this.idToken,
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

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String? email;
  @override
  final DateTime? photoUpdatedAt;
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
  final CAPermissionsSet permissions;
  @override
  final String? authId;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false)
  final String? idToken;
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

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, email: $email, photoUpdatedAt: $photoUpdatedAt, adminOn: $adminOn, permissions: $permissions, authId: $authId, password: $password, idToken: $idToken, lastEdit: $lastEdit, person: $person, servicesHistory: $servicesHistory, classesHistory: $classesHistory, groupsHistory: $groupsHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other._adminOn, _adminOn) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      email,
      photoUpdatedAt,
      const DeepCollectionEquality().hash(_adminOn),
      permissions,
      authId,
      password,
      idToken,
      lastEdit,
      person,
      const DeepCollectionEquality().hash(_servicesHistory),
      const DeepCollectionEquality().hash(_classesHistory),
      const DeepCollectionEquality().hash(_groupsHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {required final String uid,
      required final String name,
      final String? email,
      final DateTime? photoUpdatedAt,
      final List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          final CAPermissionsSet permissions,
      final String? authId,
      @JsonKey(includeIfNull: false)
          final String? password,
      @JsonKey(includeIfNull: false)
          final String? idToken,
      final LastRecordedByInfo? lastEdit,
      final Person? person,
      final List<AdminOnData>? servicesHistory,
      final List<AdminOnData>? classesHistory,
      final List<AdminOnData>? groupsHistory}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String? get email;
  @override
  DateTime? get photoUpdatedAt;
  @override
  List<AdminOnData>? get adminOn;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions;
  @override
  String? get authId;
  @override
  @JsonKey(includeIfNull: false)
  String? get password;
  @override
  @JsonKey(includeIfNull: false)
  String? get idToken;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  Person? get person;
  @override
  List<AdminOnData>? get servicesHistory;
  @override
  List<AdminOnData>? get classesHistory;
  @override
  List<AdminOnData>? get groupsHistory;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
