// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonType {
  String get id;
  String get name;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonTypeCopyWith<PersonType> get copyWith =>
      _$PersonTypeCopyWithImpl<PersonType>(this as PersonType, _$identity);

  /// Serializes this PersonType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'PersonType(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class $PersonTypeCopyWith<$Res> {
  factory $PersonTypeCopyWith(
          PersonType value, $Res Function(PersonType) _then) =
      _$PersonTypeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class _$PersonTypeCopyWithImpl<$Res> implements $PersonTypeCopyWith<$Res> {
  _$PersonTypeCopyWithImpl(this._self, this._then);

  final PersonType _self;
  final $Res Function(PersonType) _then;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PersonType extends PersonType {
  _PersonType(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color})
      : super._();
  factory _PersonType.fromJson(Map<String, dynamic> json) =>
      _$PersonTypeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonTypeCopyWith<_PersonType> get copyWith =>
      __$PersonTypeCopyWithImpl<_PersonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'PersonType(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$PersonTypeCopyWith<$Res>
    implements $PersonTypeCopyWith<$Res> {
  factory _$PersonTypeCopyWith(
          _PersonType value, $Res Function(_PersonType) _then) =
      __$PersonTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color});
}

/// @nodoc
class __$PersonTypeCopyWithImpl<$Res> implements _$PersonTypeCopyWith<$Res> {
  __$PersonTypeCopyWithImpl(this._self, this._then);

  final _PersonType _self;
  final $Res Function(_PersonType) _then;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
  }) {
    return _then(_PersonType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

// dart format on
