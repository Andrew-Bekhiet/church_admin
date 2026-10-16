// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AggregateData {
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
    final _this = this as AggregateData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AggregateData &&
            (identical(other.count, _this.count) ||
                other.count == _this.count) &&
            (identical(other.max, _this.max) || other.max == _this.max) &&
            (identical(other.min, _this.min) || other.min == _this.min));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as AggregateData;
    return Object.hash(runtimeType, _this.count, _this.max, _this.min);
  }

  @override
  String toString() {
    final _this = this as AggregateData;
    return 'AggregateData(count: ${_this.count}, max: ${_this.max}, min: ${_this.min})';
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

  $LastRecordedByInfoCopyWith<$Res>? get max;
  $LastRecordedByInfoCopyWith<$Res>? get min;
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

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get max {
    if (_self.max == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.max!, (value) {
      return _then(_self.copyWith(max: value));
    });
  }

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get min {
    if (_self.min == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.min!, (value) {
      return _then(_self.copyWith(min: value));
    });
  }
}
