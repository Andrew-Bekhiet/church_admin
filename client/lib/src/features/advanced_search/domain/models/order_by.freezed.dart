// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  String get fieldName;

  /// [value] is either OrderBy or Enum_OrderBy
  @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
  Object get value;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderByCopyWith<OrderBy> get copyWith =>
      _$OrderByCopyWithImpl<OrderBy>(this as OrderBy, _$identity);

  /// Serializes this OrderBy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderBy &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fieldName, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'OrderBy(fieldName: $fieldName, value: $value)';
  }
}

/// @nodoc
abstract mixin class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) _then) =
      _$OrderByCopyWithImpl;
  @useResult
  $Res call(
      {String fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      Object value});
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
    Object? fieldName = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      fieldName: null == fieldName
          ? _self.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _self.value : value,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OrderBy extends OrderBy {
  _OrderBy(
      {required this.fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      this.value = Enum_OrderBy.ASC})
      : assert(value is OrderBy || value is Enum_OrderBy),
        super._();
  factory _OrderBy.fromJson(Map<String, dynamic> json) =>
      _$OrderByFromJson(json);

  @override
  final String fieldName;

  /// [value] is either OrderBy or Enum_OrderBy
  @override
  @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
  final Object value;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderByCopyWith<_OrderBy> get copyWith =>
      __$OrderByCopyWithImpl<_OrderBy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderByToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderBy &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fieldName, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'OrderBy(fieldName: $fieldName, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$OrderByCopyWith<$Res> implements $OrderByCopyWith<$Res> {
  factory _$OrderByCopyWith(_OrderBy value, $Res Function(_OrderBy) _then) =
      __$OrderByCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      Object value});
}

/// @nodoc
class __$OrderByCopyWithImpl<$Res> implements _$OrderByCopyWith<$Res> {
  __$OrderByCopyWithImpl(this._self, this._then);

  final _OrderBy _self;
  final $Res Function(_OrderBy) _then;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldName = null,
    Object? value = null,
  }) {
    return _then(_OrderBy(
      fieldName: null == fieldName
          ? _self.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _self.value : value,
    ));
  }
}

// dart format on
