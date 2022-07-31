// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get firebaseAuthUid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String email,
      String? firebaseAuthUid,
      @JsonKey(ignore: true)
          String? password});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? permissions = freezed,
    Object? email = freezed,
    Object? firebaseAuthUid = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CAPermissionsSet,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseAuthUid: firebaseAuthUid == freezed
          ? _value.firebaseAuthUid
          : firebaseAuthUid // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String email,
      String? firebaseAuthUid,
      @JsonKey(ignore: true)
          String? password});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, (v) => _then(v as _$_UserData));

  @override
  _$_UserData get _value => super._value as _$_UserData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? permissions = freezed,
    Object? email = freezed,
    Object? firebaseAuthUid = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_UserData(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CAPermissionsSet,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseAuthUid: firebaseAuthUid == freezed
          ? _value.firebaseAuthUid
          : firebaseAuthUid // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          required this.permissions,
      required this.email,
      required this.firebaseAuthUid,
      @JsonKey(ignore: true)
          this.password});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String uid;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  final CAPermissionsSet permissions;
  @override
  final String email;
  @override
  final String? firebaseAuthUid;
  @override
  @JsonKey(ignore: true)
  final String? password;

  @override
  String toString() {
    return 'UserData(uid: $uid, permissions: $permissions, email: $email, firebaseAuthUid: $firebaseAuthUid, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.firebaseAuthUid, firebaseAuthUid) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(permissions),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firebaseAuthUid),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          required final CAPermissionsSet permissions,
      required final String email,
      required final String? firebaseAuthUid,
      @JsonKey(ignore: true)
          final String? password}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get uid;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions;
  @override
  String get email;
  @override
  String? get firebaseAuthUid;
  @override
  @JsonKey(ignore: true)
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
