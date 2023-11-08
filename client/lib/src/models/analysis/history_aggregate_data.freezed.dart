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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryAggregateData _$HistoryAggregateDataFromJson(Map<String, dynamic> json) {
  return _HistoryData.fromJson(json);
}

/// @nodoc
mixin _$HistoryAggregateData {
  AggregateData get aggregate => throw _privateConstructorUsedError;
  List<LastRecordedByInfo> get nodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $AggregateDataCopyWith<$Res> get aggregate {
    return $AggregateDataCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryDataImplCopyWith<$Res>
    implements $HistoryAggregateDataCopyWith<$Res> {
  factory _$$HistoryDataImplCopyWith(
          _$HistoryDataImpl value, $Res Function(_$HistoryDataImpl) then) =
      __$$HistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AggregateData aggregate, List<LastRecordedByInfo> nodes});

  @override
  $AggregateDataCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$$HistoryDataImplCopyWithImpl<$Res>
    extends _$HistoryAggregateDataCopyWithImpl<$Res, _$HistoryDataImpl>
    implements _$$HistoryDataImplCopyWith<$Res> {
  __$$HistoryDataImplCopyWithImpl(
      _$HistoryDataImpl _value, $Res Function(_$HistoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
    Object? nodes = null,
  }) {
    return _then(_$HistoryDataImpl(
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
class _$HistoryDataImpl implements _HistoryData {
  const _$HistoryDataImpl(
      {required this.aggregate,
      final List<LastRecordedByInfo> nodes = const []})
      : _nodes = nodes;

  factory _$HistoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryDataImplFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDataImpl &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, aggregate, const DeepCollectionEquality().hash(_nodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDataImplCopyWith<_$HistoryDataImpl> get copyWith =>
      __$$HistoryDataImplCopyWithImpl<_$HistoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryDataImplToJson(
      this,
    );
  }
}

abstract class _HistoryData implements HistoryAggregateData {
  const factory _HistoryData(
      {required final AggregateData aggregate,
      final List<LastRecordedByInfo> nodes}) = _$HistoryDataImpl;

  factory _HistoryData.fromJson(Map<String, dynamic> json) =
      _$HistoryDataImpl.fromJson;

  @override
  AggregateData get aggregate;
  @override
  List<LastRecordedByInfo> get nodes;
  @override
  @JsonKey(ignore: true)
  _$$HistoryDataImplCopyWith<_$HistoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
