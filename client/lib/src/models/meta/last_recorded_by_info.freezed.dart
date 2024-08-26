// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_recorded_by_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastRecordedByInfo _$LastRecordedByInfoFromJson(Map<String, dynamic> json) {
  return _LastRecordedByInfo.fromJson(json);
}

/// @nodoc
mixin _$LastRecordedByInfo {
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(readValue: readRecordedBy)
  String? get recordedBy => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this LastRecordedByInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastRecordedByInfoCopyWith<LastRecordedByInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastRecordedByInfoCopyWith<$Res> {
  factory $LastRecordedByInfoCopyWith(
          LastRecordedByInfo value, $Res Function(LastRecordedByInfo) then) =
      _$LastRecordedByInfoCopyWithImpl<$Res, LastRecordedByInfo>;
  @useResult
  $Res call(
      {DateTime time,
      @JsonKey(readValue: readRecordedBy) String? recordedBy,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LastRecordedByInfoCopyWithImpl<$Res, $Val extends LastRecordedByInfo>
    implements $LastRecordedByInfoCopyWith<$Res> {
  _$LastRecordedByInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: freezed == recordedBy
          ? _value.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LastRecordedByInfoImplCopyWith<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  factory _$$LastRecordedByInfoImplCopyWith(_$LastRecordedByInfoImpl value,
          $Res Function(_$LastRecordedByInfoImpl) then) =
      __$$LastRecordedByInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      @JsonKey(readValue: readRecordedBy) String? recordedBy,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LastRecordedByInfoImplCopyWithImpl<$Res>
    extends _$LastRecordedByInfoCopyWithImpl<$Res, _$LastRecordedByInfoImpl>
    implements _$$LastRecordedByInfoImplCopyWith<$Res> {
  __$$LastRecordedByInfoImplCopyWithImpl(_$LastRecordedByInfoImpl _value,
      $Res Function(_$LastRecordedByInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LastRecordedByInfoImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: freezed == recordedBy
          ? _value.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastRecordedByInfoImpl extends _LastRecordedByInfo {
  _$LastRecordedByInfoImpl(
      {required this.time,
      @JsonKey(readValue: readRecordedBy) this.recordedBy,
      this.user})
      : super._();

  factory _$LastRecordedByInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastRecordedByInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastRecordedByInfoImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordedBy, recordedBy) ||
                other.recordedBy == recordedBy) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, recordedBy, user);

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastRecordedByInfoImplCopyWith<_$LastRecordedByInfoImpl> get copyWith =>
      __$$LastRecordedByInfoImplCopyWithImpl<_$LastRecordedByInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastRecordedByInfoImplToJson(
      this,
    );
  }
}

abstract class _LastRecordedByInfo extends LastRecordedByInfo {
  factory _LastRecordedByInfo(
      {required final DateTime time,
      @JsonKey(readValue: readRecordedBy) final String? recordedBy,
      final User? user}) = _$LastRecordedByInfoImpl;
  _LastRecordedByInfo._() : super._();

  factory _LastRecordedByInfo.fromJson(Map<String, dynamic> json) =
      _$LastRecordedByInfoImpl.fromJson;

  @override
  DateTime get time;
  @override
  @JsonKey(readValue: readRecordedBy)
  String? get recordedBy;
  @override
  User? get user;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastRecordedByInfoImplCopyWith<_$LastRecordedByInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
