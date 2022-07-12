// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'firebase_auth_uid')
  String get firebaseAuthUID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_updated_at')
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String email,
      @JsonKey(name: 'firebase_auth_uid')
          String firebaseAuthUID,
      @JsonKey(ignore: true)
          String? password,
      @JsonKey(name: 'photo_updated_at')
          DateTime? photoUpdatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? permissions = freezed,
    Object? email = freezed,
    Object? firebaseAuthUID = freezed,
    Object? password = freezed,
    Object? photoUpdatedAt = freezed,
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
      firebaseAuthUID: firebaseAuthUID == freezed
          ? _value.firebaseAuthUID
          : firebaseAuthUID // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          CAPermissionsSet permissions,
      String email,
      @JsonKey(name: 'firebase_auth_uid')
          String firebaseAuthUID,
      @JsonKey(ignore: true)
          String? password,
      @JsonKey(name: 'photo_updated_at')
          DateTime? photoUpdatedAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? uid = freezed,
    Object? permissions = freezed,
    Object? email = freezed,
    Object? firebaseAuthUID = freezed,
    Object? password = freezed,
    Object? photoUpdatedAt = freezed,
  }) {
    return _then(_$_User(
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
      firebaseAuthUID: firebaseAuthUID == freezed
          ? _value.firebaseAuthUID
          : firebaseAuthUID // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          required this.permissions,
      required this.email,
      @JsonKey(name: 'firebase_auth_uid')
          required this.firebaseAuthUID,
      @JsonKey(ignore: true)
          this.password,
      @JsonKey(name: 'photo_updated_at')
          this.photoUpdatedAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String uid;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  final CAPermissionsSet permissions;
  @override
  final String email;
  @override
  @JsonKey(name: 'firebase_auth_uid')
  final String firebaseAuthUID;
  @override
  @JsonKey(ignore: true)
  final String? password;
  @override
  @JsonKey(name: 'photo_updated_at')
  final DateTime? photoUpdatedAt;

  @override
  String toString() {
    return 'User(uid: $uid, permissions: $permissions, email: $email, firebaseAuthUID: $firebaseAuthUID, password: $password, photoUpdatedAt: $photoUpdatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.firebaseAuthUID, firebaseAuthUID) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(permissions),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firebaseAuthUID),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(photoUpdatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String uid,
      @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
          required final CAPermissionsSet permissions,
      required final String email,
      @JsonKey(name: 'firebase_auth_uid')
          required final String firebaseAuthUID,
      @JsonKey(ignore: true)
          final String? password,
      @JsonKey(name: 'photo_updated_at')
          final DateTime? photoUpdatedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid;
  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  CAPermissionsSet get permissions;
  @override
  String get email;
  @override
  @JsonKey(name: 'firebase_auth_uid')
  String get firebaseAuthUID;
  @override
  @JsonKey(ignore: true)
  String? get password;
  @override
  @JsonKey(name: 'photo_updated_at')
  DateTime? get photoUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
