// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Family _$FamilyFromJson(Map<String, dynamic> json) {
  return _Family.fromJson(json);
}

/// @nodoc
mixin _$Family {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyCopyWith<Family> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) then) =
      _$FamilyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt});
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res> implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._value, this._then);

  final Family _value;
  // ignore: unused_field
  final $Res Function(Family) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? notes = freezed,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$_FamilyCopyWith(_$_Family value, $Res Function(_$_Family) then) =
      __$$_FamilyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt});
}

/// @nodoc
class __$$_FamilyCopyWithImpl<$Res> extends _$FamilyCopyWithImpl<$Res>
    implements _$$_FamilyCopyWith<$Res> {
  __$$_FamilyCopyWithImpl(_$_Family _value, $Res Function(_$_Family) _then)
      : super(_value, (v) => _then(v as _$_Family));

  @override
  _$_Family get _value => super._value as _$_Family;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
  }) {
    return _then(_$_Family(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Family extends _Family {
  _$_Family(
      {required this.id,
      required this.name,
      this.address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) this.geolocation,
      this.notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt})
      : super._();

  factory _$_Family.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? address;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  final Point? geolocation;
  @override
  final String? notes;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, geolocation: $geolocation, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Family &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.geolocation, geolocation) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
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
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(geolocation),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(photoUpdatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      __$$_FamilyCopyWithImpl<_$_Family>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyToJson(
      this,
    );
  }
}

abstract class _Family extends Family {
  factory _Family(
      {required final String id,
      required final String name,
      final String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
          final Point? geolocation,
      final String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt}) = _$_Family;
  _Family._() : super._();

  factory _Family.fromJson(Map<String, dynamic> json) = _$_Family.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get address;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation;
  @override
  String? get notes;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      throw _privateConstructorUsedError;
}
