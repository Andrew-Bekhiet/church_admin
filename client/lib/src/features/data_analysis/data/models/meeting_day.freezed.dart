// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingDay {
  DateTime get day;
  int get personsCount;
  int get servantsCount;
  int get totalCount;

  /// Create a copy of MeetingDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingDayCopyWith<MeetingDay> get copyWith =>
      _$MeetingDayCopyWithImpl<MeetingDay>(this as MeetingDay, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingDay &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.personsCount, personsCount) ||
                other.personsCount == personsCount) &&
            (identical(other.servantsCount, servantsCount) ||
                other.servantsCount == servantsCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, day, personsCount, servantsCount, totalCount);

  @override
  String toString() {
    return 'MeetingDay(day: $day, personsCount: $personsCount, servantsCount: $servantsCount, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class $MeetingDayCopyWith<$Res> {
  factory $MeetingDayCopyWith(
    MeetingDay value,
    $Res Function(MeetingDay) _then,
  ) = _$MeetingDayCopyWithImpl;
  @useResult
  $Res call({
    DateTime day,
    int personsCount,
    int servantsCount,
    int totalCount,
  });
}

/// @nodoc
class _$MeetingDayCopyWithImpl<$Res> implements $MeetingDayCopyWith<$Res> {
  _$MeetingDayCopyWithImpl(this._self, this._then);

  final MeetingDay _self;
  final $Res Function(MeetingDay) _then;

  /// Create a copy of MeetingDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? personsCount = null,
    Object? servantsCount = null,
    Object? totalCount = null,
  }) {
    return _then(
      MeetingDay(
        day: null == day
            ? _self.day
            : day // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        personsCount: null == personsCount
            ? _self.personsCount
            : personsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        servantsCount: null == servantsCount
            ? _self.servantsCount
            : servantsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
