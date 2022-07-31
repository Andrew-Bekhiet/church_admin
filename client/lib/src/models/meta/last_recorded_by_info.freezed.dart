// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_recorded_by_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastRecordedByInfo _$LastRecordedByInfoFromJson(Map<String, dynamic> json) {
  return _LastRecordedByInfo.fromJson(json);
}

/// @nodoc
mixin _$LastRecordedByInfo {
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(readValue: readRecordedBy)
  String? get recordedBy => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastRecordedByInfoCopyWith<LastRecordedByInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastRecordedByInfoCopyWith<$Res> {
  factory $LastRecordedByInfoCopyWith(
          LastRecordedByInfo value, $Res Function(LastRecordedByInfo) then) =
      _$LastRecordedByInfoCopyWithImpl<$Res>;
  $Res call(
      {DateTime time,
      @JsonKey(readValue: readRecordedBy) String? recordedBy,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LastRecordedByInfoCopyWithImpl<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  _$LastRecordedByInfoCopyWithImpl(this._value, this._then);

  final LastRecordedByInfo _value;
  // ignore: unused_field
  final $Res Function(LastRecordedByInfo) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: recordedBy == freezed
          ? _value.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_LastRecordedByInfoCopyWith<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  factory _$$_LastRecordedByInfoCopyWith(_$_LastRecordedByInfo value,
          $Res Function(_$_LastRecordedByInfo) then) =
      __$$_LastRecordedByInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime time,
      @JsonKey(readValue: readRecordedBy) String? recordedBy,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LastRecordedByInfoCopyWithImpl<$Res>
    extends _$LastRecordedByInfoCopyWithImpl<$Res>
    implements _$$_LastRecordedByInfoCopyWith<$Res> {
  __$$_LastRecordedByInfoCopyWithImpl(
      _$_LastRecordedByInfo _value, $Res Function(_$_LastRecordedByInfo) _then)
      : super(_value, (v) => _then(v as _$_LastRecordedByInfo));

  @override
  _$_LastRecordedByInfo get _value => super._value as _$_LastRecordedByInfo;

  @override
  $Res call({
    Object? time = freezed,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_LastRecordedByInfo(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: recordedBy == freezed
          ? _value.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastRecordedByInfo extends _LastRecordedByInfo {
  _$_LastRecordedByInfo(
      {required this.time,
      @JsonKey(readValue: readRecordedBy) this.recordedBy,
      this.user})
      : super._();

  factory _$_LastRecordedByInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LastRecordedByInfoFromJson(json);

  @override
  final DateTime time;
  @override
  @JsonKey(readValue: readRecordedBy)
  final String? recordedBy;
  @override
  final User? user;

  @override
  String toString() {
    return 'LastRecordedByInfo(time: $time, recordedBy: $recordedBy, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastRecordedByInfo &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.recordedBy, recordedBy) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(recordedBy),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_LastRecordedByInfoCopyWith<_$_LastRecordedByInfo> get copyWith =>
      __$$_LastRecordedByInfoCopyWithImpl<_$_LastRecordedByInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastRecordedByInfoToJson(
      this,
    );
  }
}

abstract class _LastRecordedByInfo extends LastRecordedByInfo {
  factory _LastRecordedByInfo(
      {required final DateTime time,
      @JsonKey(readValue: readRecordedBy) final String? recordedBy,
      final User? user}) = _$_LastRecordedByInfo;
  _LastRecordedByInfo._() : super._();

  factory _LastRecordedByInfo.fromJson(Map<String, dynamic> json) =
      _$_LastRecordedByInfo.fromJson;

  @override
  DateTime get time;
  @override
  @JsonKey(readValue: readRecordedBy)
  String? get recordedBy;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LastRecordedByInfoCopyWith<_$_LastRecordedByInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
