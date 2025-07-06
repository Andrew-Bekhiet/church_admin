// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_by.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderBy {
  FieldMetadata get field;
  OrderByValue get value;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderByCopyWith<OrderBy> get copyWith =>
      _$OrderByCopyWithImpl<OrderBy>(this as OrderBy, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderBy &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, value);

  @override
  String toString() {
    return 'OrderBy(field: $field, value: $value)';
  }
}

/// @nodoc
abstract mixin class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) _then) =
      _$OrderByCopyWithImpl;
  @useResult
  $Res call({FieldMetadata<Object> field, OrderByValue value});
}

/// @nodoc
class _$OrderByCopyWithImpl<$Res> implements $OrderByCopyWith<$Res> {
  _$OrderByCopyWithImpl(this._self, this._then);

  final OrderBy _self;
  final $Res Function(OrderBy) _then;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? value = null,
  }) {
    return _then(OrderBy(
      field: null == field
          ? _self.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldMetadata<Object>,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as OrderByValue,
    ));
  }
}

// dart format on
