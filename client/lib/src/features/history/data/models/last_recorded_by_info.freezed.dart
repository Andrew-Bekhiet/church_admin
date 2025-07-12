// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  String? get recordedBy;
  User? get user;
  bool get isFatherVisit;

  /// Create a copy of LastRecordedByInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<LastRecordedByInfo> get copyWith =>
      _$LastRecordedByInfoCopyWithImpl<LastRecordedByInfo>(
          this as LastRecordedByInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastRecordedByInfo &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordedBy, recordedBy) ||
                other.recordedBy == recordedBy) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isFatherVisit, isFatherVisit) ||
                other.isFatherVisit == isFatherVisit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, recordedBy, user, isFatherVisit);

  @override
  String toString() {
    return 'LastRecordedByInfo(time: $time, recordedBy: $recordedBy, user: $user, isFatherVisit: $isFatherVisit)';
  }
}

/// @nodoc
abstract mixin class $LastRecordedByInfoCopyWith<$Res> {
  factory $LastRecordedByInfoCopyWith(
          LastRecordedByInfo value, $Res Function(LastRecordedByInfo) _then) =
      _$LastRecordedByInfoCopyWithImpl;
  @useResult
  $Res call(
      {DateTime time, String? recordedBy, User? user, bool isFatherVisit});
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
    Object? isFatherVisit = null,
  }) {
    return _then(LastRecordedByInfo(
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
      isFatherVisit: null == isFatherVisit
          ? _self.isFatherVisit
          : isFatherVisit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
