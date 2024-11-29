// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryAggregateData _$HistoryAggregateDataFromJson(Map<String, dynamic> json) {
  return _HistoryAggregateData.fromJson(json);
}

/// @nodoc
mixin _$HistoryAggregateData {
  AggregateData get aggregate => throw _privateConstructorUsedError;
  List<LastRecordedByInfo> get nodes => throw _privateConstructorUsedError;

  /// Serializes this HistoryAggregateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryAggregateDataCopyWith<HistoryAggregateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryAggregateDataCopyWith<$Res> {
  factory $HistoryAggregateDataCopyWith(HistoryAggregateData value,
          $Res Function(HistoryAggregateData) then) =
      _$HistoryAggregateDataCopyWithImpl<$Res, HistoryAggregateData>;
  @useResult
  $Res call({AggregateData aggregate, List<LastRecordedByInfo> nodes});

  $AggregateDataCopyWith<$Res> get aggregate;
}

/// @nodoc
class _$HistoryAggregateDataCopyWithImpl<$Res,
        $Val extends HistoryAggregateData>
    implements $HistoryAggregateDataCopyWith<$Res> {
  _$HistoryAggregateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
    Object? nodes = null,
  }) {
    return _then(_value.copyWith(
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>,
    ) as $Val);
  }

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<$Res> get aggregate {
    return $AggregateDataCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryAggregateDataImplCopyWith<$Res>
    implements $HistoryAggregateDataCopyWith<$Res> {
  factory _$$HistoryAggregateDataImplCopyWith(_$HistoryAggregateDataImpl value,
          $Res Function(_$HistoryAggregateDataImpl) then) =
      __$$HistoryAggregateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AggregateData aggregate, List<LastRecordedByInfo> nodes});

  @override
  $AggregateDataCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$$HistoryAggregateDataImplCopyWithImpl<$Res>
    extends _$HistoryAggregateDataCopyWithImpl<$Res, _$HistoryAggregateDataImpl>
    implements _$$HistoryAggregateDataImplCopyWith<$Res> {
  __$$HistoryAggregateDataImplCopyWithImpl(_$HistoryAggregateDataImpl _value,
      $Res Function(_$HistoryAggregateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
    Object? nodes = null,
  }) {
    return _then(_$HistoryAggregateDataImpl(
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryAggregateDataImpl implements _HistoryAggregateData {
  const _$HistoryAggregateDataImpl(
      {required this.aggregate,
      final List<LastRecordedByInfo> nodes = const []})
      : _nodes = nodes;

  factory _$HistoryAggregateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryAggregateDataImplFromJson(json);

  @override
  final AggregateData aggregate;
  final List<LastRecordedByInfo> _nodes;
  @override
  @JsonKey()
  List<LastRecordedByInfo> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return 'HistoryAggregateData(aggregate: $aggregate, nodes: $nodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryAggregateDataImpl &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aggregate, const DeepCollectionEquality().hash(_nodes));

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryAggregateDataImplCopyWith<_$HistoryAggregateDataImpl>
      get copyWith =>
          __$$HistoryAggregateDataImplCopyWithImpl<_$HistoryAggregateDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryAggregateDataImplToJson(
      this,
    );
  }
}

abstract class _HistoryAggregateData implements HistoryAggregateData {
  const factory _HistoryAggregateData(
      {required final AggregateData aggregate,
      final List<LastRecordedByInfo> nodes}) = _$HistoryAggregateDataImpl;

  factory _HistoryAggregateData.fromJson(Map<String, dynamic> json) =
      _$HistoryAggregateDataImpl.fromJson;

  @override
  AggregateData get aggregate;
  @override
  List<LastRecordedByInfo> get nodes;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryAggregateDataImplCopyWith<_$HistoryAggregateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
