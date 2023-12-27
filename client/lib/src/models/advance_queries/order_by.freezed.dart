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
  String get fieldName => throw _privateConstructorUsedError;

  /// [value] is either OrderBy or Enum_OrderBy
  @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
  Object get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderByCopyWith<OrderBy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) then) =
      _$OrderByCopyWithImpl<$Res, OrderBy>;
  @useResult
  $Res call(
      {String fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      Object value});
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
    Object? fieldName = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _value.value : value,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderByImplCopyWith<$Res> implements $OrderByCopyWith<$Res> {
  factory _$$OrderByImplCopyWith(
          _$OrderByImpl value, $Res Function(_$OrderByImpl) then) =
      __$$OrderByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      Object value});
}

/// @nodoc
class __$$OrderByImplCopyWithImpl<$Res>
    extends _$OrderByCopyWithImpl<$Res, _$OrderByImpl>
    implements _$$OrderByImplCopyWith<$Res> {
  __$$OrderByImplCopyWithImpl(
      _$OrderByImpl _value, $Res Function(_$OrderByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? value = null,
  }) {
    return _then(_$OrderByImpl(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _value.value : value,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderByImpl extends _OrderBy {
  _$OrderByImpl(
      {required this.fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      this.value = Enum_OrderBy.ASC})
      : assert(value is OrderBy || value is Enum_OrderBy),
        super._();

  factory _$OrderByImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderByImplFromJson(json);

  @override
  final String fieldName;

  /// [value] is either OrderBy or Enum_OrderBy
  @override
  @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
  final Object value;

  @override
  String toString() {
    return 'OrderBy(fieldName: $fieldName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderByImpl &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fieldName, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      __$$OrderByImplCopyWithImpl<_$OrderByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderByImplToJson(
      this,
    );
  }
}

abstract class _OrderBy extends OrderBy {
  factory _OrderBy(
      {required final String fieldName,
      @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
      final Object value}) = _$OrderByImpl;
  _OrderBy._() : super._();

  factory _OrderBy.fromJson(Map<String, dynamic> json) = _$OrderByImpl.fromJson;

  @override
  String get fieldName;
  @override

  /// [value] is either OrderBy or Enum_OrderBy
  @JsonKey(fromJson: orderByValueFromJson, toJson: orderByValueToJson)
  Object get value;
  @override
  @JsonKey(ignore: true)
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
