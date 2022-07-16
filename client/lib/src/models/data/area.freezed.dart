// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  Polygon? get bounds => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_updated_at')
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
          Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      @JsonKey(name: 'photo_updated_at')
          DateTime? photoUpdatedAt});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  final Area _value;
  // ignore: unused_field
  final $Res Function(Area) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? bounds = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Polygon?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$_AreaCopyWith(_$_Area value, $Res Function(_$_Area) then) =
      __$$_AreaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
          Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      @JsonKey(name: 'photo_updated_at')
          DateTime? photoUpdatedAt});
}

/// @nodoc
class __$$_AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res>
    implements _$$_AreaCopyWith<$Res> {
  __$$_AreaCopyWithImpl(_$_Area _value, $Res Function(_$_Area) _then)
      : super(_value, (v) => _then(v as _$_Area));

  @override
  _$_Area get _value => super._value as _$_Area;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? bounds = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
  }) {
    return _then(_$_Area(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Polygon?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: photoUpdatedAt == freezed
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Area extends _Area {
  _$_Area(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson) this.bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      @JsonKey(name: 'photo_updated_at') this.photoUpdatedAt})
      : super._();

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  final Polygon? bounds;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  @JsonKey(name: 'photo_updated_at')
  final DateTime? photoUpdatedAt;

  @override
  String toString() {
    return 'Area(id: $id, name: $name, bounds: $bounds, color: $color, photoUpdatedAt: $photoUpdatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Area &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.bounds, bounds) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.photoUpdatedAt, photoUpdatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(bounds),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(photoUpdatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_AreaCopyWith<_$_Area> get copyWith =>
      __$$_AreaCopyWithImpl<_$_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(this);
  }
}

abstract class _Area extends Area {
  factory _Area(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
          final Polygon? bounds,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      @JsonKey(name: 'photo_updated_at')
          final DateTime? photoUpdatedAt}) = _$_Area;
  _Area._() : super._();

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  Polygon? get bounds;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  @JsonKey(name: 'photo_updated_at')
  DateTime? get photoUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AreaCopyWith<_$_Area> get copyWith => throw _privateConstructorUsedError;
}
