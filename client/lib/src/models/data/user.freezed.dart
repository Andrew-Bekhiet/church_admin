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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
  List<AdminOnData>? get adminOn => throw _privateConstructorUsedError;
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  PermissionsSet get permissions => throw _privateConstructorUsedError;
  String? get authId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isMultiFactorEnrolled => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get idToken => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get passwordKeyHash => throw _privateConstructorUsedError;
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
      String? blurhash,
      List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      PermissionsSet permissions,
      String? authId,
      @JsonKey(includeIfNull: false) bool? isMultiFactorEnrolled,
      @JsonKey(includeIfNull: false) String? idToken,
      @JsonKey(includeIfNull: false) bool? emailVerified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      String? passwordKeyHash,
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
    Object? blurhash = freezed,
    Object? adminOn = freezed,
    Object? permissions = null,
    Object? authId = freezed,
    Object? isMultiFactorEnrolled = freezed,
    Object? idToken = freezed,
    Object? emailVerified = freezed,
    Object? passwordKeyHash = freezed,
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
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      adminOn: freezed == adminOn
          ? _value.adminOn
          : adminOn // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsSet,
      authId: freezed == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMultiFactorEnrolled: freezed == isMultiFactorEnrolled
          ? _value.isMultiFactorEnrolled
          : isMultiFactorEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      passwordKeyHash: freezed == passwordKeyHash
          ? _value.passwordKeyHash
          : passwordKeyHash // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false) bool? isMultiFactorEnrolled,
      @JsonKey(includeIfNull: false) String? idToken,
      @JsonKey(includeIfNull: false) bool? emailVerified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      String? passwordKeyHash,
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
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

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
    Object? isMultiFactorEnrolled = freezed,
    Object? idToken = freezed,
    Object? emailVerified = freezed,
    Object? passwordKeyHash = freezed,
    Object? lastEdit = freezed,
    Object? person = freezed,
    Object? servicesHistory = freezed,
    Object? classesHistory = freezed,
    Object? groupsHistory = freezed,
  }) {
    return _then(_$UserImpl(
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
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      adminOn: freezed == adminOn
          ? _value._adminOn
          : adminOn // ignore: cast_nullable_to_non_nullable
              as List<AdminOnData>?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsSet,
      authId: freezed == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMultiFactorEnrolled: freezed == isMultiFactorEnrolled
          ? _value.isMultiFactorEnrolled
          : isMultiFactorEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      passwordKeyHash: freezed == passwordKeyHash
          ? _value.passwordKeyHash
          : passwordKeyHash // ignore: cast_nullable_to_non_nullable
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
class _$UserImpl extends _User {
  _$UserImpl(
      {required this.uid,
      required this.name,
      this.email,
      this.photoUpdatedAt,
      this.blurhash,
      final List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      this.permissions = const PermissionsSet.empty(),
      this.authId,
      @JsonKey(includeIfNull: false) this.isMultiFactorEnrolled,
      @JsonKey(includeIfNull: false) this.idToken,
      @JsonKey(includeIfNull: false) this.emailVerified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.passwordKeyHash,
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

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

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
  @JsonKey(includeIfNull: false)
  final bool? isMultiFactorEnrolled;
  @override
  @JsonKey(includeIfNull: false)
  final String? idToken;
  @override
  @JsonKey(includeIfNull: false)
  final bool? emailVerified;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? passwordKeyHash;
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
    return 'User(uid: $uid, name: $name, email: $email, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, adminOn: $adminOn, permissions: $permissions, authId: $authId, isMultiFactorEnrolled: $isMultiFactorEnrolled, idToken: $idToken, emailVerified: $emailVerified, passwordKeyHash: $passwordKeyHash, lastEdit: $lastEdit, person: $person, servicesHistory: $servicesHistory, classesHistory: $classesHistory, groupsHistory: $groupsHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
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
            (identical(other.isMultiFactorEnrolled, isMultiFactorEnrolled) ||
                other.isMultiFactorEnrolled == isMultiFactorEnrolled) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.passwordKeyHash, passwordKeyHash) ||
                other.passwordKeyHash == passwordKeyHash) &&
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
      blurhash,
      const DeepCollectionEquality().hash(_adminOn),
      const DeepCollectionEquality().hash(permissions),
      authId,
      isMultiFactorEnrolled,
      idToken,
      emailVerified,
      passwordKeyHash,
      lastEdit,
      person,
      const DeepCollectionEquality().hash(_servicesHistory),
      const DeepCollectionEquality().hash(_classesHistory),
      const DeepCollectionEquality().hash(_groupsHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
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
      final String? blurhash,
      final List<AdminOnData>? adminOn,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
      final PermissionsSet permissions,
      final String? authId,
      @JsonKey(includeIfNull: false) final bool? isMultiFactorEnrolled,
      @JsonKey(includeIfNull: false) final String? idToken,
      @JsonKey(includeIfNull: false) final bool? emailVerified,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? passwordKeyHash,
      final LastRecordedByInfo? lastEdit,
      final Person? person,
      final List<AdminOnData>? servicesHistory,
      final List<AdminOnData>? classesHistory,
      final List<AdminOnData>? groupsHistory}) = _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String? get email;
  @override
  DateTime? get photoUpdatedAt;
  @override
  String? get blurhash;
  @override
  List<AdminOnData>? get adminOn;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  PermissionsSet get permissions;
  @override
  String? get authId;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isMultiFactorEnrolled;
  @override
  @JsonKey(includeIfNull: false)
  String? get idToken;
  @override
  @JsonKey(includeIfNull: false)
  bool? get emailVerified;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get passwordKeyHash;
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
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
