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
  String? get name;
  QueryableType get queryableType;
  List<Filter> get filters;
  LogicalOperator get logicalOperator;
  List<OrderBy> get orderBy;
  int? get limit;

  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedQueryCopyWith<AdvancedQuery> get copyWith =>
      _$AdvancedQueryCopyWithImpl<AdvancedQuery>(
          this as AdvancedQuery, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedQuery &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.queryableType, queryableType) ||
                other.queryableType == queryableType) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
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
      const DeepCollectionEquality().hash(filters),
      logicalOperator,
      const DeepCollectionEquality().hash(orderBy),
      limit);

  @override
  String toString() {
    return 'AdvancedQuery(name: $name, queryableType: $queryableType, filters: $filters, logicalOperator: $logicalOperator, orderBy: $orderBy, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $AdvancedQueryCopyWith<$Res> {
  factory $AdvancedQueryCopyWith(
          AdvancedQuery value, $Res Function(AdvancedQuery) _then) =
      _$AdvancedQueryCopyWithImpl;
  @useResult
  $Res call(
      {QueryableType<Object> queryableType,
      String? name,
      List<Filter<Object>> filters,
      LogicalOperator<FieldMetadata<Object>, Operator<dynamic>, Object,
              Filter<Object>>
          logicalOperator,
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
    Object? queryableType = null,
    Object? name = freezed,
    Object? filters = null,
    Object? logicalOperator = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(AdvancedQuery(
      queryableType: null == queryableType
          ? _self.queryableType
          : queryableType // ignore: cast_nullable_to_non_nullable
              as QueryableType<Object>,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter<Object>>,
      logicalOperator: null == logicalOperator
          ? _self.logicalOperator
          : logicalOperator // ignore: cast_nullable_to_non_nullable
              as LogicalOperator<FieldMetadata<Object>, Operator<dynamic>,
                  Object, Filter<Object>>,
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

// dart format on
