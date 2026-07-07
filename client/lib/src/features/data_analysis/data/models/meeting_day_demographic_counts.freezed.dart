// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_day_demographic_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingDayDemographicCounts {
  DateTime get day;
  int? get studyYearId;
  bool? get gender;
  int get personsCount;
  int get servantsCount;
  int get totalCount;
  String? get studyYearName;

  /// Create a copy of MeetingDayDemographicCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingDayDemographicCountsCopyWith<MeetingDayDemographicCounts>
  get copyWith =>
      _$MeetingDayDemographicCountsCopyWithImpl<MeetingDayDemographicCounts>(
        this as MeetingDayDemographicCounts,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingDayDemographicCounts &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.personsCount, personsCount) ||
                other.personsCount == personsCount) &&
            (identical(other.servantsCount, servantsCount) ||
                other.servantsCount == servantsCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.studyYearName, studyYearName) ||
                other.studyYearName == studyYearName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    day,
    studyYearId,
    gender,
    personsCount,
    servantsCount,
    totalCount,
    studyYearName,
  );

  @override
  String toString() {
    return 'MeetingDayDemographicCounts(day: $day, studyYearId: $studyYearId, gender: $gender, personsCount: $personsCount, servantsCount: $servantsCount, totalCount: $totalCount, studyYearName: $studyYearName)';
  }
}

/// @nodoc
abstract mixin class $MeetingDayDemographicCountsCopyWith<$Res> {
  factory $MeetingDayDemographicCountsCopyWith(
    MeetingDayDemographicCounts value,
    $Res Function(MeetingDayDemographicCounts) _then,
  ) = _$MeetingDayDemographicCountsCopyWithImpl;
  @useResult
  $Res call({
    DateTime day,
    int personsCount,
    int servantsCount,
    int totalCount,
    int? studyYearId,
    bool? gender,
    String? studyYearName,
  });
}

/// @nodoc
class _$MeetingDayDemographicCountsCopyWithImpl<$Res>
    implements $MeetingDayDemographicCountsCopyWith<$Res> {
  _$MeetingDayDemographicCountsCopyWithImpl(this._self, this._then);

  final MeetingDayDemographicCounts _self;
  final $Res Function(MeetingDayDemographicCounts) _then;

  /// Create a copy of MeetingDayDemographicCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? personsCount = null,
    Object? servantsCount = null,
    Object? totalCount = null,
    Object? studyYearId = freezed,
    Object? gender = freezed,
    Object? studyYearName = freezed,
  }) {
    return _then(
      MeetingDayDemographicCounts(
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
        studyYearId: freezed == studyYearId
            ? _self.studyYearId
            : studyYearId // ignore: cast_nullable_to_non_nullable
                  as int?,
        gender: freezed == gender
            ? _self.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as bool?,
        studyYearName: freezed == studyYearName
            ? _self.studyYearName
            : studyYearName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
