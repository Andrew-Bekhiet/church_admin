// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_recorded_by_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastRecordedByInfo {
  DateTime get time;
  @JsonKey(readValue: readRecordedBy)
  String? get recordedBy;
  User? get user;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<LastRecordedByInfo> get copyWith =>
      _$LastRecordedByInfoCopyWithImpl<LastRecordedByInfo>(
          this as LastRecordedByInfo, _$identity);

  /// Serializes this LastRecordedByInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastRecordedByInfo &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordedBy, recordedBy) ||
                other.recordedBy == recordedBy) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, recordedBy, user);

  @override
  String toString() {
    return 'LastRecordedByInfo(time: $time, recordedBy: $recordedBy, user: $user)';
  }
}

/// @nodoc
abstract mixin class $LastRecordedByInfoCopyWith<$Res> {
  factory $LastRecordedByInfoCopyWith(
          LastRecordedByInfo value, $Res Function(LastRecordedByInfo) _then) =
      _$LastRecordedByInfoCopyWithImpl;
  @useResult
  $Res call(
      {DateTime time,
      @JsonKey(readValue: readRecordedBy) String? recordedBy,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LastRecordedByInfoCopyWithImpl<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  _$LastRecordedByInfoCopyWithImpl(this._self, this._then);

  final LastRecordedByInfo _self;
  final $Res Function(LastRecordedByInfo) _then;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: freezed == recordedBy
          ? _self.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LastRecordedByInfo extends LastRecordedByInfo {
  _LastRecordedByInfo(
      {required this.time,
      @JsonKey(readValue: readRecordedBy) this.recordedBy,
      this.user})
      : super._();
  factory _LastRecordedByInfo.fromJson(Map<String, dynamic> json) =>
      _$LastRecordedByInfoFromJson(json);

  @override
  final DateTime time;
  @override
  @JsonKey(readValue: readRecordedBy)
  final String? recordedBy;
  @override
  final User? user;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LastRecordedByInfoCopyWith<_LastRecordedByInfo> get copyWith =>
      __$LastRecordedByInfoCopyWithImpl<_LastRecordedByInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LastRecordedByInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastRecordedByInfo &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordedBy, recordedBy) ||
                other.recordedBy == recordedBy) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, recordedBy, user);

  @override
  String toString() {
    return 'LastRecordedByInfo(time: $time, recordedBy: $recordedBy, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$LastRecordedByInfoCopyWith<$Res>
    implements $LastRecordedByInfoCopyWith<$Res> {
  factory _$LastRecordedByInfoCopyWith(
          _LastRecordedByInfo value, $Res Function(_LastRecordedByInfo) _then) =
      __$LastRecordedByInfoCopyWithImpl;
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
class __$LastRecordedByInfoCopyWithImpl<$Res>
    implements _$LastRecordedByInfoCopyWith<$Res> {
  __$LastRecordedByInfoCopyWithImpl(this._self, this._then);

  final _LastRecordedByInfo _self;
  final $Res Function(_LastRecordedByInfo) _then;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? recordedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_LastRecordedByInfo(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordedBy: freezed == recordedBy
          ? _self.recordedBy
          : recordedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
