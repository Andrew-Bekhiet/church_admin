// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingDay {
  /// Create a copy of MeetingDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingDayCopyWith<MeetingDay> get copyWith =>
      _$MeetingDayCopyWithImpl<MeetingDay>(this as MeetingDay, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as MeetingDay;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingDay &&
            (identical(other.day, _this.day) || other.day == _this.day) &&
            (identical(other.personsCount, _this.personsCount) ||
                other.personsCount == _this.personsCount) &&
            (identical(other.servantsCount, _this.servantsCount) ||
                other.servantsCount == _this.servantsCount) &&
            (identical(other.totalCount, _this.totalCount) ||
                other.totalCount == _this.totalCount));
  }

  @override
  int get hashCode {
    final _this = this as MeetingDay;
    return Object.hash(
      runtimeType,
      _this.day,
      _this.personsCount,
      _this.servantsCount,
      _this.totalCount,
    );
  }

  @override
  String toString() {
    final _this = this as MeetingDay;
    return 'MeetingDay(day: ${_this.day}, personsCount: ${_this.personsCount}, servantsCount: ${_this.servantsCount}, totalCount: ${_this.totalCount})';
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
