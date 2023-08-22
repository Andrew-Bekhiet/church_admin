// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hobby _$HobbyFromJson(Map<String, dynamic> json) {
  return _Hobby.fromJson(json);
}

/// @nodoc
mixin _$Hobby {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HobbyCopyWith<Hobby> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbyCopyWith<$Res> {
  factory $HobbyCopyWith(Hobby value, $Res Function(Hobby) then) =
      _$HobbyCopyWithImpl<$Res, Hobby>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class _$HobbyCopyWithImpl<$Res, $Val extends Hobby>
    implements $HobbyCopyWith<$Res> {
  _$HobbyCopyWithImpl(this._value, this._then);

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
abstract class _$$_HobbyCopyWith<$Res> implements $HobbyCopyWith<$Res> {
  factory _$$_HobbyCopyWith(_$_Hobby value, $Res Function(_$_Hobby) then) =
      __$$_HobbyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class __$$_HobbyCopyWithImpl<$Res> extends _$HobbyCopyWithImpl<$Res, _$_Hobby>
    implements _$$_HobbyCopyWith<$Res> {
  __$$_HobbyCopyWithImpl(_$_Hobby _value, $Res Function(_$_Hobby) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_$_Hobby(
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

@JsonSerializable(createFieldMap: true)
class _$_Hobby extends _Hobby {
  _$_Hobby(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color})
      : super._();

  factory _$_Hobby.fromJson(Map<String, dynamic> json) =>
      _$$_HobbyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  String toString() {
    return 'Hobby(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hobby &&
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
  _$$_HobbyCopyWith<_$_Hobby> get copyWith =>
      __$$_HobbyCopyWithImpl<_$_Hobby>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HobbyToJson(
      this,
    );
  }
}

abstract class _Hobby extends Hobby {
  factory _Hobby(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
      final Color? color}) = _$_Hobby;
  _Hobby._() : super._();

  factory _Hobby.fromJson(Map<String, dynamic> json) = _$_Hobby.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_HobbyCopyWith<_$_Hobby> get copyWith =>
      throw _privateConstructorUsedError;
}
