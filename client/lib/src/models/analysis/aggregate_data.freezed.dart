// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AggregateData<T> _$AggregateDataFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _AggregateData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$AggregateData<T> {
  int? get count => throw _privateConstructorUsedError;
  T? get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregateDataCopyWith<T, AggregateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateDataCopyWith<T, $Res> {
  factory $AggregateDataCopyWith(
          AggregateData<T> value, $Res Function(AggregateData<T>) then) =
      _$AggregateDataCopyWithImpl<T, $Res>;
  $Res call({int? count, T? max});
}

/// @nodoc
class _$AggregateDataCopyWithImpl<T, $Res>
    implements $AggregateDataCopyWith<T, $Res> {
  _$AggregateDataCopyWithImpl(this._value, this._then);

  final AggregateData<T> _value;
  // ignore: unused_field
  final $Res Function(AggregateData<T>) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class _$$_AggregateDataCopyWith<T, $Res>
    implements $AggregateDataCopyWith<T, $Res> {
  factory _$$_AggregateDataCopyWith(
          _$_AggregateData<T> value, $Res Function(_$_AggregateData<T>) then) =
      __$$_AggregateDataCopyWithImpl<T, $Res>;
  @override
  $Res call({int? count, T? max});
}

/// @nodoc
class __$$_AggregateDataCopyWithImpl<T, $Res>
    extends _$AggregateDataCopyWithImpl<T, $Res>
    implements _$$_AggregateDataCopyWith<T, $Res> {
  __$$_AggregateDataCopyWithImpl(
      _$_AggregateData<T> _value, $Res Function(_$_AggregateData<T>) _then)
      : super(_value, (v) => _then(v as _$_AggregateData<T>));

  @override
  _$_AggregateData<T> get _value => super._value as _$_AggregateData<T>;

  @override
  $Res call({
    Object? count = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_AggregateData<T>(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_AggregateData<T> implements _AggregateData<T> {
  _$_AggregateData({this.count, this.max});

  factory _$_AggregateData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_AggregateDataFromJson(json, fromJsonT);

  @override
  final int? count;
  @override
  final T? max;

  @override
  String toString() {
    return 'AggregateData<$T>(count: $count, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AggregateData<T> &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_AggregateDataCopyWith<T, _$_AggregateData<T>> get copyWith =>
      __$$_AggregateDataCopyWithImpl<T, _$_AggregateData<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_AggregateDataToJson<T>(this, toJsonT);
  }
}

abstract class _AggregateData<T> implements AggregateData<T> {
  factory _AggregateData({final int? count, final T? max}) =
      _$_AggregateData<T>;

  factory _AggregateData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_AggregateData<T>.fromJson;

  @override
  int? get count;
  @override
  T? get max;
  @override
  @JsonKey(ignore: true)
  _$$_AggregateDataCopyWith<T, _$_AggregateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
