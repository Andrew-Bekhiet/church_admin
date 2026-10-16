// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedQuery {
  /// Create a copy of AdvancedQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedQueryCopyWith<AdvancedQuery> get copyWith =>
      _$AdvancedQueryCopyWithImpl<AdvancedQuery>(
        this as AdvancedQuery,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as AdvancedQuery;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedQuery &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.queryableType, _this.queryableType) ||
                other.queryableType == _this.queryableType) &&
            const DeepCollectionEquality().equals(
              other.filters,
              _this.filters,
            ) &&
            (identical(other.logicalOperator, _this.logicalOperator) ||
                other.logicalOperator == _this.logicalOperator) &&
            const DeepCollectionEquality().equals(
              other.orderBy,
              _this.orderBy,
            ) &&
            (identical(other.limit, _this.limit) ||
                other.limit == _this.limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as AdvancedQuery;
    return Object.hash(
      runtimeType,
      _this.name,
      _this.queryableType,
      const DeepCollectionEquality().hash(_this.filters),
      _this.logicalOperator,
      const DeepCollectionEquality().hash(_this.orderBy),
      _this.limit,
    );
  }

  @override
  String toString() {
    final _this = this as AdvancedQuery;
    return 'AdvancedQuery(name: ${_this.name}, queryableType: ${_this.queryableType}, filters: ${_this.filters}, logicalOperator: ${_this.logicalOperator}, orderBy: ${_this.orderBy}, limit: ${_this.limit})';
  }
}

/// @nodoc
abstract mixin class $AdvancedQueryCopyWith<$Res> {
  factory $AdvancedQueryCopyWith(
    AdvancedQuery value,
    $Res Function(AdvancedQuery) _then,
  ) = _$AdvancedQueryCopyWithImpl;
  @useResult
  $Res call({
    QueryableType<Object> queryableType,
    List<Filter<Object>> filters,
    LogicalOperator<
      FieldMetadata<Object>,
      Operator<dynamic>,
      Object,
      Filter<Object>
    >
    logicalOperator,
    List<OrderBy> orderBy,
    String? name,
    int? limit,
  });
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
    Object? filters = null,
    Object? logicalOperator = null,
    Object? orderBy = null,
    Object? name = freezed,
    Object? limit = freezed,
  }) {
    return _then(
      AdvancedQuery(
        queryableType: null == queryableType
            ? _self.queryableType
            : queryableType // ignore: cast_nullable_to_non_nullable
                  as QueryableType<Object>,
        filters: null == filters
            ? _self.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as List<Filter<Object>>,
        logicalOperator: null == logicalOperator
            ? _self.logicalOperator
            : logicalOperator // ignore: cast_nullable_to_non_nullable
                  as LogicalOperator<
                    FieldMetadata<Object>,
                    Operator<dynamic>,
                    Object,
                    Filter<Object>
                  >,
        orderBy: null == orderBy
            ? _self.orderBy
            : orderBy // ignore: cast_nullable_to_non_nullable
                  as List<OrderBy>,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        limit: freezed == limit
            ? _self.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
