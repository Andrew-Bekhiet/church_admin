// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_year_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudyYearRange {
  StudyYear? get from;
  StudyYear? get to;

  /// Create a copy of StudyYearRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudyYearRangeCopyWith<StudyYearRange> get copyWith =>
      _$StudyYearRangeCopyWithImpl<StudyYearRange>(
        this as StudyYearRange,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudyYearRange &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @override
  String toString() {
    return 'StudyYearRange(from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class $StudyYearRangeCopyWith<$Res> {
  factory $StudyYearRangeCopyWith(
    StudyYearRange value,
    $Res Function(StudyYearRange) _then,
  ) = _$StudyYearRangeCopyWithImpl;
  @useResult
  $Res call({StudyYear? from, StudyYear? to});
}

/// @nodoc
class _$StudyYearRangeCopyWithImpl<$Res>
    implements $StudyYearRangeCopyWith<$Res> {
  _$StudyYearRangeCopyWithImpl(this._self, this._then);

  final StudyYearRange _self;
  final $Res Function(StudyYearRange) _then;

  /// Create a copy of StudyYearRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? from = freezed, Object? to = freezed}) {
    return _then(
      StudyYearRange(
        from: freezed == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        to: freezed == to
            ? _self.to
            : to // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
      ),
    );
  }
}
