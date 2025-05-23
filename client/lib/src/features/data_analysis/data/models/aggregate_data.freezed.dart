// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AggregateData {
  int? get count;
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get max;
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get min;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<AggregateData> get copyWith =>
      _$AggregateDataCopyWithImpl<AggregateData>(
          this as AggregateData, _$identity);

  /// Serializes this AggregateData to a JSON map.
  Map<String, dynamic> toJson();

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
          AggregateData value, $Res Function(AggregateData) _then) =
      _$AggregateDataCopyWithImpl;
  @useResult
  $Res call(
      {int? count,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? max,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? min});

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
    return _then(_self.copyWith(
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
    ));
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

/// @nodoc
@JsonSerializable()
class _AggregateData implements AggregateData {
  const _AggregateData(
      {this.count,
      @JsonKey(readValue: _readLastRecordedByInfo) this.max,
      @JsonKey(readValue: _readLastRecordedByInfo) this.min});
  factory _AggregateData.fromJson(Map<String, dynamic> json) =>
      _$AggregateDataFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? max;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? min;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AggregateDataCopyWith<_AggregateData> get copyWith =>
      __$AggregateDataCopyWithImpl<_AggregateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AggregateDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AggregateData &&
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
abstract mixin class _$AggregateDataCopyWith<$Res>
    implements $AggregateDataCopyWith<$Res> {
  factory _$AggregateDataCopyWith(
          _AggregateData value, $Res Function(_AggregateData) _then) =
      __$AggregateDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? count,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? max,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? min});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get max;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get min;
}

/// @nodoc
class __$AggregateDataCopyWithImpl<$Res>
    implements _$AggregateDataCopyWith<$Res> {
  __$AggregateDataCopyWithImpl(this._self, this._then);

  final _AggregateData _self;
  final $Res Function(_AggregateData) _then;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
    Object? min = freezed,
  }) {
    return _then(_AggregateData(
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
    ));
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

// dart format on
