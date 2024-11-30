// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvancedQuery _$AdvancedQueryFromJson(Map<String, dynamic> json) {
  return _AdvancedQuery.fromJson(json);
}

/// @nodoc
mixin _$AdvancedQuery {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  QueryableType<Object> get queryableType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions => throw _privateConstructorUsedError;
  LogicalOperator get logicalOperator => throw _privateConstructorUsedError;
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this AdvancedQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvancedQueryCopyWith<AdvancedQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedQueryCopyWith<$Res> {
  factory $AdvancedQueryCopyWith(
          AdvancedQuery value, $Res Function(AdvancedQuery) then) =
      _$AdvancedQueryCopyWithImpl<$Res, AdvancedQuery>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      QueryableType<Object> queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
      LogicalOperator logicalOperator,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      List<OrderBy> orderBy,
      int? limit});
}

/// @nodoc
class _$AdvancedQueryCopyWithImpl<$Res, $Val extends AdvancedQuery>
    implements $AdvancedQueryCopyWith<$Res> {
  _$AdvancedQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? queryableType = null,
    Object? conditions = null,
    Object? logicalOperator = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      queryableType: null == queryableType
          ? _value.queryableType
          : queryableType // ignore: cast_nullable_to_non_nullable
              as QueryableType<Object>,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
      logicalOperator: null == logicalOperator
          ? _value.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicalOperator,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvancedQueryImplCopyWith<$Res>
    implements $AdvancedQueryCopyWith<$Res> {
  factory _$$AdvancedQueryImplCopyWith(
          _$AdvancedQueryImpl value, $Res Function(_$AdvancedQueryImpl) then) =
      __$$AdvancedQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      QueryableType<Object> queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
      LogicalOperator logicalOperator,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      List<OrderBy> orderBy,
      int? limit});
}

/// @nodoc
class __$$AdvancedQueryImplCopyWithImpl<$Res>
    extends _$AdvancedQueryCopyWithImpl<$Res, _$AdvancedQueryImpl>
    implements _$$AdvancedQueryImplCopyWith<$Res> {
  __$$AdvancedQueryImplCopyWithImpl(
      _$AdvancedQueryImpl _value, $Res Function(_$AdvancedQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? queryableType = null,
    Object? conditions = null,
    Object? logicalOperator = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(_$AdvancedQueryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      queryableType: null == queryableType
          ? _value.queryableType
          : queryableType // ignore: cast_nullable_to_non_nullable
              as QueryableType<Object>,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
      logicalOperator: null == logicalOperator
          ? _value.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicalOperator,
      orderBy: null == orderBy
          ? _value._orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedQueryImpl implements _AdvancedQuery {
  const _$AdvancedQueryImpl(
      {required this.name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      required this.queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      final List<Condition> conditions = const [],
      this.logicalOperator = LogicalOperator.and,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      final List<OrderBy> orderBy = const [],
      this.limit})
      : _conditions = conditions,
        _orderBy = orderBy;

  factory _$AdvancedQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedQueryImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  final QueryableType<Object> queryableType;
  final List<Condition> _conditions;
  @override
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  @JsonKey()
  final LogicalOperator logicalOperator;
  final List<OrderBy> _orderBy;
  @override
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy {
    if (_orderBy is EqualUnmodifiableListView) return _orderBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderBy);
  }

  @override
  final int? limit;

  @override
  String toString() {
    return 'AdvancedQuery(name: $name, queryableType: $queryableType, conditions: $conditions, logicalOperator: $logicalOperator, orderBy: $orderBy, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedQueryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.queryableType, queryableType) ||
                other.queryableType == queryableType) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.logicalOperator, logicalOperator) ||
                other.logicalOperator == logicalOperator) &&
            const DeepCollectionEquality().equals(other._orderBy, _orderBy) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      queryableType,
      const DeepCollectionEquality().hash(_conditions),
      logicalOperator,
      const DeepCollectionEquality().hash(_orderBy),
      limit);

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedQueryImplCopyWith<_$AdvancedQueryImpl> get copyWith =>
      __$$AdvancedQueryImplCopyWithImpl<_$AdvancedQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedQueryImplToJson(
      this,
    );
  }
}

abstract class _AdvancedQuery implements AdvancedQuery {
  const factory _AdvancedQuery(
      {required final String name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      required final QueryableType<Object> queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      final List<Condition> conditions,
      final LogicalOperator logicalOperator,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      final List<OrderBy> orderBy,
      final int? limit}) = _$AdvancedQueryImpl;

  factory _AdvancedQuery.fromJson(Map<String, dynamic> json) =
      _$AdvancedQueryImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  QueryableType<Object> get queryableType;
  @override
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions;
  @override
  LogicalOperator get logicalOperator;
  @override
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy;
  @override
  int? get limit;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvancedQueryImplCopyWith<_$AdvancedQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
