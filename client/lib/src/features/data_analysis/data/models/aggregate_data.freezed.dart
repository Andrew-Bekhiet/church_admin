// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AggregateData {
  int? get count;
  LastRecordedByInfo? get max;
  LastRecordedByInfo? get min;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<AggregateData> get copyWith =>
      _$AggregateDataCopyWithImpl<AggregateData>(
        this as AggregateData,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AggregateData &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.min, min) || other.min == min));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, max, min);

  @override
  String toString() {
    return 'AggregateData(count: $count, max: $max, min: $min)';
  }
}

/// @nodoc
abstract mixin class $AggregateDataCopyWith<$Res> {
  factory $AggregateDataCopyWith(
    AggregateData value,
    $Res Function(AggregateData) _then,
  ) = _$AggregateDataCopyWithImpl;
  @useResult
  $Res call({int? count, LastRecordedByInfo? max, LastRecordedByInfo? min});
}

/// @nodoc
class _$AggregateDataCopyWithImpl<$Res>
    implements $AggregateDataCopyWith<$Res> {
  _$AggregateDataCopyWithImpl(this._self, this._then);

  final AggregateData _self;
  final $Res Function(AggregateData) _then;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
    Object? min = freezed,
  }) {
    return _then(
      AggregateData(
        count: freezed == count
            ? _self.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
        max: freezed == max
            ? _self.max
            : max // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        min: freezed == min
            ? _self.min
            : min // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
      ),
    );
  }
}
