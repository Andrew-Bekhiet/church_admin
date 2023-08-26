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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvancedQuery _$AdvancedQueryFromJson(Map<String, dynamic> json) {
  return _AdvancedQuery.fromJson(json);
}

/// @nodoc
mixin _$AdvancedQuery {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions => throw _privateConstructorUsedError;
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? conditions = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
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
abstract class _$$_AdvancedQueryCopyWith<$Res>
    implements $AdvancedQueryCopyWith<$Res> {
  factory _$$_AdvancedQueryCopyWith(
          _$_AdvancedQuery value, $Res Function(_$_AdvancedQuery) then) =
      __$$_AdvancedQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      List<Condition> conditions,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      List<OrderBy> orderBy,
      int? limit});
}

/// @nodoc
class __$$_AdvancedQueryCopyWithImpl<$Res>
    extends _$AdvancedQueryCopyWithImpl<$Res, _$_AdvancedQuery>
    implements _$$_AdvancedQueryCopyWith<$Res> {
  __$$_AdvancedQueryCopyWithImpl(
      _$_AdvancedQuery _value, $Res Function(_$_AdvancedQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? conditions = null,
    Object? orderBy = null,
    Object? limit = freezed,
  }) {
    return _then(_$_AdvancedQuery(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
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
class _$_AdvancedQuery implements _AdvancedQuery {
  const _$_AdvancedQuery(
      {required this.name,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      final List<Condition> conditions = const [],
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      final List<OrderBy> orderBy = const [],
      this.limit})
      : _conditions = conditions,
        _orderBy = orderBy;

  factory _$_AdvancedQuery.fromJson(Map<String, dynamic> json) =>
      _$$_AdvancedQueryFromJson(json);

  @override
  final String name;
  final List<Condition> _conditions;
  @override
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

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
    return 'AdvancedQuery(name: $name, conditions: $conditions, orderBy: $orderBy, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvancedQuery &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality().equals(other._orderBy, _orderBy) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_orderBy),
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvancedQueryCopyWith<_$_AdvancedQuery> get copyWith =>
      __$$_AdvancedQueryCopyWithImpl<_$_AdvancedQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvancedQueryToJson(
      this,
    );
  }
}

abstract class _AdvancedQuery implements AdvancedQuery {
  const factory _AdvancedQuery(
      {required final String name,
      @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
      final List<Condition> conditions,
      @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
      final List<OrderBy> orderBy,
      final int? limit}) = _$_AdvancedQuery;

  factory _AdvancedQuery.fromJson(Map<String, dynamic> json) =
      _$_AdvancedQuery.fromJson;

  @override
  String get name;
  @override
  @JsonKey(fromJson: conditionsFromJson, toJson: conditionsToJson)
  List<Condition> get conditions;
  @override
  @JsonKey(fromJson: orderBysFromJson, toJson: orderBysToJson)
  List<OrderBy> get orderBy;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_AdvancedQueryCopyWith<_$_AdvancedQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
