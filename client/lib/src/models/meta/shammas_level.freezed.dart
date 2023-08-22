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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShammasLevel _$ShammasLevelFromJson(Map<String, dynamic> json) {
  return _ShammasLevel.fromJson(json);
}

/// @nodoc
mixin _$ShammasLevel {
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_ShammasLevelCopyWith<$Res>
    implements $ShammasLevelCopyWith<$Res> {
  factory _$$_ShammasLevelCopyWith(
          _$_ShammasLevel value, $Res Function(_$_ShammasLevel) then) =
      __$$_ShammasLevelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, String name, String id});
}

/// @nodoc
class __$$_ShammasLevelCopyWithImpl<$Res>
    extends _$ShammasLevelCopyWithImpl<$Res, _$_ShammasLevel>
    implements _$$_ShammasLevelCopyWith<$Res> {
  __$$_ShammasLevelCopyWithImpl(
      _$_ShammasLevel _value, $Res Function(_$_ShammasLevel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_ShammasLevel(
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

@JsonSerializable(createFieldMap: true)
class _$_ShammasLevel extends _ShammasLevel {
  _$_ShammasLevel({required this.order, required this.name, required this.id})
      : super._();

  factory _$_ShammasLevel.fromJson(Map<String, dynamic> json) =>
      _$$_ShammasLevelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShammasLevel &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShammasLevelCopyWith<_$_ShammasLevel> get copyWith =>
      __$$_ShammasLevelCopyWithImpl<_$_ShammasLevel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShammasLevelToJson(
      this,
    );
  }
}

abstract class _ShammasLevel extends ShammasLevel {
  factory _ShammasLevel(
      {required final int order,
      required final String name,
      required final String id}) = _$_ShammasLevel;
  _ShammasLevel._() : super._();

  factory _ShammasLevel.fromJson(Map<String, dynamic> json) =
      _$_ShammasLevel.fromJson;

  @override
  int get order;
  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ShammasLevelCopyWith<_$_ShammasLevel> get copyWith =>
      throw _privateConstructorUsedError;
}
