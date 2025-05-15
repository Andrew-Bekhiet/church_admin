// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedQuery {
  String get name;
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  QueryableType get queryableType;
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions;
  LogicalOperator get logicalOperator;
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy;
  int? get limit;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedQueryCopyWith<AdvancedQuery> get copyWith =>
      _$AdvancedQueryCopyWithImpl<AdvancedQuery>(
          this as AdvancedQuery, _$identity);

  /// Serializes this AdvancedQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedQuery &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.queryableType, queryableType) ||
                other.queryableType == queryableType) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions) &&
            (identical(other.logicalOperator, logicalOperator) ||
                other.logicalOperator == logicalOperator) &&
            const DeepCollectionEquality().equals(other.orderBy, orderBy) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      queryableType,
      const DeepCollectionEquality().hash(conditions),
      logicalOperator,
      const DeepCollectionEquality().hash(orderBy),
      limit);

  @override
  String toString() {
    return 'AdvancedQuery(name: $name, queryableType: $queryableType, conditions: $conditions, logicalOperator: $logicalOperator, orderBy: $orderBy, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $AdvancedQueryCopyWith<$Res> {
  factory $AdvancedQueryCopyWith(
          AdvancedQuery value, $Res Function(AdvancedQuery) _then) =
      _$AdvancedQueryCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      QueryableType queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
      LogicalOperator logicalOperator,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      List<OrderBy> orderBy,
      int? limit});
}

/// @nodoc
class _$AdvancedQueryCopyWithImpl<$Res>
    implements $AdvancedQueryCopyWith<$Res> {
  _$AdvancedQueryCopyWithImpl(this._self, this._then);

  final AdvancedQuery _self;
  final $Res Function(AdvancedQuery) _then;

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
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      queryableType: null == queryableType
          ? _self.queryableType
          : queryableType // ignore: cast_nullable_to_non_nullable
              as QueryableType,
      conditions: null == conditions
          ? _self.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
      logicalOperator: null == logicalOperator
          ? _self.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicalOperator,
      orderBy: null == orderBy
          ? _self.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AdvancedQuery extends AdvancedQuery {
  const _AdvancedQuery(
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
        _orderBy = orderBy,
        super._();
  factory _AdvancedQuery.fromJson(Map<String, dynamic> json) =>
      _$AdvancedQueryFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
  final QueryableType queryableType;
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

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedQueryCopyWith<_AdvancedQuery> get copyWith =>
      __$AdvancedQueryCopyWithImpl<_AdvancedQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedQueryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedQuery &&
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

  @override
  String toString() {
    return 'AdvancedQuery(name: $name, queryableType: $queryableType, conditions: $conditions, logicalOperator: $logicalOperator, orderBy: $orderBy, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedQueryCopyWith<$Res>
    implements $AdvancedQueryCopyWith<$Res> {
  factory _$AdvancedQueryCopyWith(
          _AdvancedQuery value, $Res Function(_AdvancedQuery) _then) =
      __$AdvancedQueryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(fromJson: queryableTypeFromJson, toJson: queryableTypeToJson)
      QueryableType queryableType,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
      LogicalOperator logicalOperator,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      List<OrderBy> orderBy,
      int? limit});
}

/// @nodoc
class __$AdvancedQueryCopyWithImpl<$Res>
    implements _$AdvancedQueryCopyWith<$Res> {
  __$AdvancedQueryCopyWithImpl(this._self, this._then);

  final _AdvancedQuery _self;
  final $Res Function(_AdvancedQuery) _then;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? queryableType = null,
    Object? conditions = null,
    Object? logicalOperator = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(_AdvancedQuery(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      queryableType: null == queryableType
          ? _self.queryableType
          : queryableType // ignore: cast_nullable_to_non_nullable
              as QueryableType,
      conditions: null == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
      logicalOperator: null == logicalOperator
          ? _self.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicalOperator,
      orderBy: null == orderBy
          ? _self._orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
