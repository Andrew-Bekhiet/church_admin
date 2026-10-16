// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_aggregate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryAggregateData {
  /// Create a copy of HistoryAggregateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HistoryAggregateDataCopyWith<HistoryAggregateData> get copyWith =>
      _$HistoryAggregateDataCopyWithImpl<HistoryAggregateData>(
        this as HistoryAggregateData,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as HistoryAggregateData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistoryAggregateData &&
            (identical(other.aggregate, _this.aggregate) ||
                other.aggregate == _this.aggregate) &&
            const DeepCollectionEquality().equals(other.nodes, _this.nodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as HistoryAggregateData;
    return Object.hash(
      runtimeType,
      _this.aggregate,
      const DeepCollectionEquality().hash(_this.nodes),
    );
  }

  @override
  String toString() {
    final _this = this as HistoryAggregateData;
    return 'HistoryAggregateData(aggregate: ${_this.aggregate}, nodes: ${_this.nodes})';
  }
}

/// @nodoc
abstract mixin class $HistoryAggregateDataCopyWith<$Res> {
  factory $HistoryAggregateDataCopyWith(
    HistoryAggregateData value,
    $Res Function(HistoryAggregateData) _then,
  ) = _$HistoryAggregateDataCopyWithImpl;
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
  $Res call({Object? aggregate = null, Object? nodes = null}) {
    return _then(
      HistoryAggregateData(
        aggregate: null == aggregate
            ? _self.aggregate
            : aggregate // ignore: cast_nullable_to_non_nullable
                  as AggregateData,
        nodes: null == nodes
            ? _self.nodes
            : nodes // ignore: cast_nullable_to_non_nullable
                  as List<LastRecordedByInfo>,
      ),
    );
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
