// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_by.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderBy _$OrderByFromJson(Map<String, dynamic> json) {
  return _OrderBy.fromJson(json);
}

/// @nodoc
mixin _$OrderBy {
  String get field => throw _privateConstructorUsedError;
  Enum_OrderBy get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderByCopyWith<OrderBy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) then) =
      _$OrderByCopyWithImpl<$Res, OrderBy>;
  @useResult
  $Res call({String field, Enum_OrderBy direction});
}

/// @nodoc
class _$OrderByCopyWithImpl<$Res, $Val extends OrderBy>
    implements $OrderByCopyWith<$Res> {
  _$OrderByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Enum_OrderBy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderByCopyWith<$Res> implements $OrderByCopyWith<$Res> {
  factory _$$_OrderByCopyWith(
          _$_OrderBy value, $Res Function(_$_OrderBy) then) =
      __$$_OrderByCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, Enum_OrderBy direction});
}

/// @nodoc
class __$$_OrderByCopyWithImpl<$Res>
    extends _$OrderByCopyWithImpl<$Res, _$_OrderBy>
    implements _$$_OrderByCopyWith<$Res> {
  __$$_OrderByCopyWithImpl(_$_OrderBy _value, $Res Function(_$_OrderBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? direction = null,
  }) {
    return _then(_$_OrderBy(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Enum_OrderBy,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderBy extends _OrderBy {
  const _$_OrderBy({required this.field, this.direction = Enum_OrderBy.ASC})
      : super._();

  factory _$_OrderBy.fromJson(Map<String, dynamic> json) =>
      _$$_OrderByFromJson(json);

  @override
  final String field;
  @override
  @JsonKey()
  final Enum_OrderBy direction;

  @override
  String toString() {
    return 'OrderBy(field: $field, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderBy &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderByCopyWith<_$_OrderBy> get copyWith =>
      __$$_OrderByCopyWithImpl<_$_OrderBy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderByToJson(
      this,
    );
  }
}

abstract class _OrderBy extends OrderBy {
  const factory _OrderBy(
      {required final String field, final Enum_OrderBy direction}) = _$_OrderBy;
  const _OrderBy._() : super._();

  factory _OrderBy.fromJson(Map<String, dynamic> json) = _$_OrderBy.fromJson;

  @override
  String get field;
  @override
  Enum_OrderBy get direction;
  @override
  @JsonKey(ignore: true)
  _$$_OrderByCopyWith<_$_OrderBy> get copyWith =>
      throw _privateConstructorUsedError;
}
