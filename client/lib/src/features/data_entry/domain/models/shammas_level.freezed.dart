// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shammas_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShammasLevel _$ShammasLevelFromJson(Map<String, dynamic> json) {
  return _ShammasLevel.fromJson(json);
}

/// @nodoc
mixin _$ShammasLevel {
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ShammasLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShammasLevelCopyWith<ShammasLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShammasLevelCopyWith<$Res> {
  factory $ShammasLevelCopyWith(
          ShammasLevel value, $Res Function(ShammasLevel) then) =
      _$ShammasLevelCopyWithImpl<$Res, ShammasLevel>;
  @useResult
  $Res call({int order, String name, String id});
}

/// @nodoc
class _$ShammasLevelCopyWithImpl<$Res, $Val extends ShammasLevel>
    implements $ShammasLevelCopyWith<$Res> {
  _$ShammasLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShammasLevelImplCopyWith<$Res>
    implements $ShammasLevelCopyWith<$Res> {
  factory _$$ShammasLevelImplCopyWith(
          _$ShammasLevelImpl value, $Res Function(_$ShammasLevelImpl) then) =
      __$$ShammasLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, String name, String id});
}

/// @nodoc
class __$$ShammasLevelImplCopyWithImpl<$Res>
    extends _$ShammasLevelCopyWithImpl<$Res, _$ShammasLevelImpl>
    implements _$$ShammasLevelImplCopyWith<$Res> {
  __$$ShammasLevelImplCopyWithImpl(
      _$ShammasLevelImpl _value, $Res Function(_$ShammasLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$ShammasLevelImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShammasLevelImpl extends _ShammasLevel {
  _$ShammasLevelImpl(
      {required this.order, required this.name, required this.id})
      : super._();

  factory _$ShammasLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShammasLevelImplFromJson(json);

  @override
  final int order;
  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'ShammasLevel(order: $order, name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShammasLevelImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, id);

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShammasLevelImplCopyWith<_$ShammasLevelImpl> get copyWith =>
      __$$ShammasLevelImplCopyWithImpl<_$ShammasLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShammasLevelImplToJson(
      this,
    );
  }
}

abstract class _ShammasLevel extends ShammasLevel {
  factory _ShammasLevel(
      {required final int order,
      required final String name,
      required final String id}) = _$ShammasLevelImpl;
  _ShammasLevel._() : super._();

  factory _ShammasLevel.fromJson(Map<String, dynamic> json) =
      _$ShammasLevelImpl.fromJson;

  @override
  int get order;
  @override
  String get name;
  @override
  String get id;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShammasLevelImplCopyWith<_$ShammasLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
