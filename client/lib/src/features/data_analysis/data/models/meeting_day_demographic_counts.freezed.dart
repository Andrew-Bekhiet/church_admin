// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_day_demographic_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingDayDemographicCounts {
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
    final _this = this as MeetingDayDemographicCounts;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingDayDemographicCounts &&
            (identical(other.day, _this.day) || other.day == _this.day) &&
            (identical(other.studyYearId, _this.studyYearId) ||
                other.studyYearId == _this.studyYearId) &&
            (identical(other.gender, _this.gender) ||
                other.gender == _this.gender) &&
            (identical(other.personsCount, _this.personsCount) ||
                other.personsCount == _this.personsCount) &&
            (identical(other.servantsCount, _this.servantsCount) ||
                other.servantsCount == _this.servantsCount) &&
            (identical(other.totalCount, _this.totalCount) ||
                other.totalCount == _this.totalCount) &&
            (identical(other.studyYearName, _this.studyYearName) ||
                other.studyYearName == _this.studyYearName));
  }

  @override
  int get hashCode {
    final _this = this as MeetingDayDemographicCounts;
    return Object.hash(
      runtimeType,
      _this.day,
      _this.studyYearId,
      _this.gender,
      _this.personsCount,
      _this.servantsCount,
      _this.totalCount,
      _this.studyYearName,
    );
  }

  @override
  String toString() {
    final _this = this as MeetingDayDemographicCounts;
    return 'MeetingDayDemographicCounts(day: ${_this.day}, studyYearId: ${_this.studyYearId}, gender: ${_this.gender}, personsCount: ${_this.personsCount}, servantsCount: ${_this.servantsCount}, totalCount: ${_this.totalCount}, studyYearName: ${_this.studyYearName})';
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
