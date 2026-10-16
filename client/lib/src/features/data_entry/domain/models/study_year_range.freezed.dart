// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_year_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudyYearRange {
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
    final _this = this as StudyYearRange;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudyYearRange &&
            (identical(other.from, _this.from) || other.from == _this.from) &&
            (identical(other.to, _this.to) || other.to == _this.to));
  }

  @override
  int get hashCode {
    final _this = this as StudyYearRange;
    return Object.hash(runtimeType, _this.from, _this.to);
  }

  @override
  String toString() {
    final _this = this as StudyYearRange;
    return 'StudyYearRange(from: ${_this.from}, to: ${_this.to})';
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

  $StudyYearCopyWith<$Res>? get from;
  $StudyYearCopyWith<$Res>? get to;
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

  /// Create a copy of StudyYearRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get from {
    if (_self.from == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.from!, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of StudyYearRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get to {
    if (_self.to == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.to!, (value) {
      return _then(_self.copyWith(to: value));
    });
  }
}
