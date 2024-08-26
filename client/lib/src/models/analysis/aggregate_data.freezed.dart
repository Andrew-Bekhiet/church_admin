// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AggregateData _$AggregateDataFromJson(Map<String, dynamic> json) {
  return _AggregateData.fromJson(json);
}

/// @nodoc
mixin _$AggregateData {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get max => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get min => throw _privateConstructorUsedError;

  /// Serializes this AggregateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AggregateDataCopyWith<AggregateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateDataCopyWith<$Res> {
  factory $AggregateDataCopyWith(
          AggregateData value, $Res Function(AggregateData) then) =
      _$AggregateDataCopyWithImpl<$Res, AggregateData>;
  @useResult
  $Res call(
      {int? count,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? max,
      @JsonKey(readValue: _readLastRecordedByInfo) LastRecordedByInfo? min});

  $LastRecordedByInfoCopyWith<$Res>? get max;
  $LastRecordedByInfoCopyWith<$Res>? get min;
}

/// @nodoc
class _$AggregateDataCopyWithImpl<$Res, $Val extends AggregateData>
    implements $AggregateDataCopyWith<$Res> {
  _$AggregateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
    Object? min = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ) as $Val);
  }

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get max {
    if (_value.max == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.max!, (value) {
      return _then(_value.copyWith(max: value) as $Val);
    });
  }

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get min {
    if (_value.min == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.min!, (value) {
      return _then(_value.copyWith(min: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AggregateDataImplCopyWith<$Res>
    implements $AggregateDataCopyWith<$Res> {
  factory _$$AggregateDataImplCopyWith(
          _$AggregateDataImpl value, $Res Function(_$AggregateDataImpl) then) =
      __$$AggregateDataImplCopyWithImpl<$Res>;
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
class __$$AggregateDataImplCopyWithImpl<$Res>
    extends _$AggregateDataCopyWithImpl<$Res, _$AggregateDataImpl>
    implements _$$AggregateDataImplCopyWith<$Res> {
  __$$AggregateDataImplCopyWithImpl(
      _$AggregateDataImpl _value, $Res Function(_$AggregateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
    Object? min = freezed,
  }) {
    return _then(_$AggregateDataImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AggregateDataImpl implements _AggregateData {
  const _$AggregateDataImpl(
      {this.count,
      @JsonKey(readValue: _readLastRecordedByInfo) this.max,
      @JsonKey(readValue: _readLastRecordedByInfo) this.min});

  factory _$AggregateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregateDataImplFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? max;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  final LastRecordedByInfo? min;

  @override
  String toString() {
    return 'AggregateData(count: $count, max: $max, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.min, min) || other.min == min));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, max, min);

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregateDataImplCopyWith<_$AggregateDataImpl> get copyWith =>
      __$$AggregateDataImplCopyWithImpl<_$AggregateDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregateDataImplToJson(
      this,
    );
  }
}

abstract class _AggregateData implements AggregateData {
  const factory _AggregateData(
      {final int? count,
      @JsonKey(readValue: _readLastRecordedByInfo)
      final LastRecordedByInfo? max,
      @JsonKey(readValue: _readLastRecordedByInfo)
      final LastRecordedByInfo? min}) = _$AggregateDataImpl;

  factory _AggregateData.fromJson(Map<String, dynamic> json) =
      _$AggregateDataImpl.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get max;
  @override
  @JsonKey(readValue: _readLastRecordedByInfo)
  LastRecordedByInfo? get min;

  /// Create a copy of AggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AggregateDataImplCopyWith<_$AggregateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
