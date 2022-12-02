// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonType _$PersonTypeFromJson(Map<String, dynamic> json) {
  return _PersonType.fromJson(json);
}

/// @nodoc
mixin _$PersonType {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonTypeCopyWith<PersonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonTypeCopyWith<$Res> {
  factory $PersonTypeCopyWith(
          PersonType value, $Res Function(PersonType) then) =
      _$PersonTypeCopyWithImpl<$Res, PersonType>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class _$PersonTypeCopyWithImpl<$Res, $Val extends PersonType>
    implements $PersonTypeCopyWith<$Res> {
  _$PersonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonTypeCopyWith<$Res>
    implements $PersonTypeCopyWith<$Res> {
  factory _$$_PersonTypeCopyWith(
          _$_PersonType value, $Res Function(_$_PersonType) then) =
      __$$_PersonTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class __$$_PersonTypeCopyWithImpl<$Res>
    extends _$PersonTypeCopyWithImpl<$Res, _$_PersonType>
    implements _$$_PersonTypeCopyWith<$Res> {
  __$$_PersonTypeCopyWithImpl(
      _$_PersonType _value, $Res Function(_$_PersonType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_$_PersonType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonType extends _PersonType {
  _$_PersonType(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color})
      : super._();

  factory _$_PersonType.fromJson(Map<String, dynamic> json) =>
      _$$_PersonTypeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  String toString() {
    return 'PersonType(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonTypeCopyWith<_$_PersonType> get copyWith =>
      __$$_PersonTypeCopyWithImpl<_$_PersonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonTypeToJson(
      this,
    );
  }
}

abstract class _PersonType extends PersonType {
  factory _PersonType(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color}) = _$_PersonType;
  _PersonType._() : super._();

  factory _PersonType.fromJson(Map<String, dynamic> json) =
      _$_PersonType.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PersonTypeCopyWith<_$_PersonType> get copyWith =>
      throw _privateConstructorUsedError;
}
