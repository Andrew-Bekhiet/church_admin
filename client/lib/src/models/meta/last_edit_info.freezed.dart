// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_edit_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastEditInfo _$LastEditInfoFromJson(Map<String, dynamic> json) {
  return _LastEditInfo.fromJson(json);
}

/// @nodoc
mixin _$LastEditInfo {
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_uid')
  String get userUID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastEditInfoCopyWith<LastEditInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastEditInfoCopyWith<$Res> {
  factory $LastEditInfoCopyWith(
          LastEditInfo value, $Res Function(LastEditInfo) then) =
      _$LastEditInfoCopyWithImpl<$Res>;
  $Res call({DateTime time, @JsonKey(name: 'user_uid') String userUID});
}

/// @nodoc
class _$LastEditInfoCopyWithImpl<$Res> implements $LastEditInfoCopyWith<$Res> {
  _$LastEditInfoCopyWithImpl(this._value, this._then);

  final LastEditInfo _value;
  // ignore: unused_field
  final $Res Function(LastEditInfo) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? userUID = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userUID: userUID == freezed
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LastEditInfoCopyWith<$Res>
    implements $LastEditInfoCopyWith<$Res> {
  factory _$$_LastEditInfoCopyWith(
          _$_LastEditInfo value, $Res Function(_$_LastEditInfo) then) =
      __$$_LastEditInfoCopyWithImpl<$Res>;
  @override
  $Res call({DateTime time, @JsonKey(name: 'user_uid') String userUID});
}

/// @nodoc
class __$$_LastEditInfoCopyWithImpl<$Res>
    extends _$LastEditInfoCopyWithImpl<$Res>
    implements _$$_LastEditInfoCopyWith<$Res> {
  __$$_LastEditInfoCopyWithImpl(
      _$_LastEditInfo _value, $Res Function(_$_LastEditInfo) _then)
      : super(_value, (v) => _then(v as _$_LastEditInfo));

  @override
  _$_LastEditInfo get _value => super._value as _$_LastEditInfo;

  @override
  $Res call({
    Object? time = freezed,
    Object? userUID = freezed,
  }) {
    return _then(_$_LastEditInfo(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userUID: userUID == freezed
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastEditInfo implements _LastEditInfo {
  _$_LastEditInfo(
      {required this.time, @JsonKey(name: 'user_uid') required this.userUID});

  factory _$_LastEditInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LastEditInfoFromJson(json);

  @override
  final DateTime time;
  @override
  @JsonKey(name: 'user_uid')
  final String userUID;

  @override
  String toString() {
    return 'LastEditInfo(time: $time, userUID: $userUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastEditInfo &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.userUID, userUID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(userUID));

  @JsonKey(ignore: true)
  @override
  _$$_LastEditInfoCopyWith<_$_LastEditInfo> get copyWith =>
      __$$_LastEditInfoCopyWithImpl<_$_LastEditInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastEditInfoToJson(
      this,
    );
  }
}

abstract class _LastEditInfo implements LastEditInfo {
  factory _LastEditInfo(
          {required final DateTime time,
          @JsonKey(name: 'user_uid') required final String userUID}) =
      _$_LastEditInfo;

  factory _LastEditInfo.fromJson(Map<String, dynamic> json) =
      _$_LastEditInfo.fromJson;

  @override
  DateTime get time;
  @override
  @JsonKey(name: 'user_uid')
  String get userUID;
  @override
  @JsonKey(ignore: true)
  _$$_LastEditInfoCopyWith<_$_LastEditInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
