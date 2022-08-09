// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'analysis_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalysisData<T> {
  AggregateData<T?> get aggregate => throw _privateConstructorUsedError;
  List<T> get nodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisDataCopyWith<T, AnalysisData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisDataCopyWith<T, $Res> {
  factory $AnalysisDataCopyWith(
          AnalysisData<T> value, $Res Function(AnalysisData<T>) then) =
      _$AnalysisDataCopyWithImpl<T, $Res>;
  $Res call({AggregateData<T?> aggregate, List<T> nodes});

  $AggregateDataCopyWith<T?, $Res> get aggregate;
}

/// @nodoc
class _$AnalysisDataCopyWithImpl<T, $Res>
    implements $AnalysisDataCopyWith<T, $Res> {
  _$AnalysisDataCopyWithImpl(this._value, this._then);

  final AnalysisData<T> _value;
  // ignore: unused_field
  final $Res Function(AnalysisData<T>) _then;

  @override
  $Res call({
    Object? aggregate = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_value.copyWith(
      aggregate: aggregate == freezed
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData<T?>,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }

  @override
  $AggregateDataCopyWith<T?, $Res> get aggregate {
    return $AggregateDataCopyWith<T?, $Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value));
    });
  }
}

/// @nodoc
abstract class _$$_AnalysisDataCopyWith<T, $Res>
    implements $AnalysisDataCopyWith<T, $Res> {
  factory _$$_AnalysisDataCopyWith(
          _$_AnalysisData<T> value, $Res Function(_$_AnalysisData<T>) then) =
      __$$_AnalysisDataCopyWithImpl<T, $Res>;
  @override
  $Res call({AggregateData<T?> aggregate, List<T> nodes});

  @override
  $AggregateDataCopyWith<T?, $Res> get aggregate;
}

/// @nodoc
class __$$_AnalysisDataCopyWithImpl<T, $Res>
    extends _$AnalysisDataCopyWithImpl<T, $Res>
    implements _$$_AnalysisDataCopyWith<T, $Res> {
  __$$_AnalysisDataCopyWithImpl(
      _$_AnalysisData<T> _value, $Res Function(_$_AnalysisData<T>) _then)
      : super(_value, (v) => _then(v as _$_AnalysisData<T>));

  @override
  _$_AnalysisData<T> get _value => super._value as _$_AnalysisData<T>;

  @override
  $Res call({
    Object? aggregate = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_$_AnalysisData<T>(
      aggregate: aggregate == freezed
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData<T?>,
      nodes: nodes == freezed
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_AnalysisData<T> implements _AnalysisData<T> {
  _$_AnalysisData({required this.aggregate, final List<T> nodes = const []})
      : _nodes = nodes;

  @override
  final AggregateData<T?> aggregate;
  final List<T> _nodes;
  @override
  @JsonKey()
  List<T> get nodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return 'AnalysisData<$T>(aggregate: $aggregate, nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalysisData<T> &&
            const DeepCollectionEquality().equals(other.aggregate, aggregate) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aggregate),
      const DeepCollectionEquality().hash(_nodes));

  @JsonKey(ignore: true)
  @override
  _$$_AnalysisDataCopyWith<T, _$_AnalysisData<T>> get copyWith =>
      __$$_AnalysisDataCopyWithImpl<T, _$_AnalysisData<T>>(this, _$identity);
}

abstract class _AnalysisData<T> implements AnalysisData<T> {
  factory _AnalysisData(
      {required final AggregateData<T?> aggregate,
      final List<T> nodes}) = _$_AnalysisData<T>;

  @override
  AggregateData<T?> get aggregate;
  @override
  List<T> get nodes;
  @override
  @JsonKey(ignore: true)
  _$$_AnalysisDataCopyWith<T, _$_AnalysisData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
