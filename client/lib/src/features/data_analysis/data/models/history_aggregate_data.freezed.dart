// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryAggregateData {
  AggregateData get aggregate;
  List<LastRecordedByInfo> get nodes;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<HistoryAggregateData> get copyWith =>
      _$HistoryAggregateDataCopyWithImpl<HistoryAggregateData>(
          this as HistoryAggregateData, _$identity);

  /// Serializes this HistoryAggregateData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistoryAggregateData &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate) &&
            const DeepCollectionEquality().equals(other.nodes, nodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aggregate, const DeepCollectionEquality().hash(nodes));

  @override
  String toString() {
    return 'HistoryAggregateData(aggregate: $aggregate, nodes: $nodes)';
  }
}

/// @nodoc
abstract mixin class $HistoryAggregateDataCopyWith<$Res> {
  factory $HistoryAggregateDataCopyWith(HistoryAggregateData value,
          $Res Function(HistoryAggregateData) _then) =
      _$HistoryAggregateDataCopyWithImpl;
  @useResult
  $Res call({AggregateData aggregate, List<LastRecordedByInfo> nodes});

  $AggregateDataCopyWith<$Res> get aggregate;
}

/// @nodoc
class _$HistoryAggregateDataCopyWithImpl<$Res>
    implements $HistoryAggregateDataCopyWith<$Res> {
  _$HistoryAggregateDataCopyWithImpl(this._self, this._then);

  final HistoryAggregateData _self;
  final $Res Function(HistoryAggregateData) _then;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
    Object? nodes = null,
  }) {
    return _then(_self.copyWith(
      aggregate: null == aggregate
          ? _self.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData,
      nodes: null == nodes
          ? _self.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>,
    ));
  }

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<$Res> get aggregate {
    return $AggregateDataCopyWith<$Res>(_self.aggregate, (value) {
      return _then(_self.copyWith(aggregate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _HistoryAggregateData implements HistoryAggregateData {
  const _HistoryAggregateData(
      {required this.aggregate,
      final List<LastRecordedByInfo> nodes = const []})
      : _nodes = nodes;
  factory _HistoryAggregateData.fromJson(Map<String, dynamic> json) =>
      _$HistoryAggregateDataFromJson(json);

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

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HistoryAggregateDataCopyWith<_HistoryAggregateData> get copyWith =>
      __$HistoryAggregateDataCopyWithImpl<_HistoryAggregateData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HistoryAggregateDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryAggregateData &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aggregate, const DeepCollectionEquality().hash(_nodes));

  @override
  String toString() {
    return 'HistoryAggregateData(aggregate: $aggregate, nodes: $nodes)';
  }
}

/// @nodoc
abstract mixin class _$HistoryAggregateDataCopyWith<$Res>
    implements $HistoryAggregateDataCopyWith<$Res> {
  factory _$HistoryAggregateDataCopyWith(_HistoryAggregateData value,
          $Res Function(_HistoryAggregateData) _then) =
      __$HistoryAggregateDataCopyWithImpl;
  @override
  @useResult
  $Res call({AggregateData aggregate, List<LastRecordedByInfo> nodes});

  @override
  $AggregateDataCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$HistoryAggregateDataCopyWithImpl<$Res>
    implements _$HistoryAggregateDataCopyWith<$Res> {
  __$HistoryAggregateDataCopyWithImpl(this._self, this._then);

  final _HistoryAggregateData _self;
  final $Res Function(_HistoryAggregateData) _then;

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? aggregate = null,
    Object? nodes = null,
  }) {
    return _then(_HistoryAggregateData(
      aggregate: null == aggregate
          ? _self.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as AggregateData,
      nodes: null == nodes
          ? _self._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<LastRecordedByInfo>,
    ));
  }

  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<$Res> get aggregate {
    return $AggregateDataCopyWith<$Res>(_self.aggregate, (value) {
      return _then(_self.copyWith(aggregate: value));
    });
  }
}

// dart format on
