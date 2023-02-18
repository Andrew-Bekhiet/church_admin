// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<Area>? get areas => throw _privateConstructorUsedError;
  List<Street>? get streets => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyCopyWith<Family> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) then) =
      _$FamilyCopyWithImpl<$Res, Family>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      List<Area>? areas,
      List<Street>? streets,
      LastRecordedByInfo? lastEdit});

  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res, $Val extends Family>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? lastEdit = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      areas: freezed == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: freezed == streets
          ? _value.streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_value.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastEdit!, (value) {
      return _then(_value.copyWith(lastEdit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$_FamilyCopyWith(_$_Family value, $Res Function(_$_Family) then) =
      __$$_FamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      String? notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      List<Area>? areas,
      List<Street>? streets,
      LastRecordedByInfo? lastEdit});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$$_FamilyCopyWithImpl<$Res>
    extends _$FamilyCopyWithImpl<$Res, _$_Family>
    implements _$$_FamilyCopyWith<$Res> {
  __$$_FamilyCopyWithImpl(_$_Family _value, $Res Function(_$_Family) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? geolocation = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? lastEdit = freezed,
  }) {
    return _then(_$_Family(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      areas: freezed == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: freezed == streets
          ? _value._streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
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
      this.photoUpdatedAt,
      final List<Area>? areas,
      final List<Street>? streets,
      this.lastEdit})
      : _areas = areas,
        _streets = streets,
        super._();

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
  final List<Area>? _areas;
  @override
  List<Area>? get areas {
    final value = _areas;
    if (value == null) return null;
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Street>? _streets;
  @override
  List<Street>? get streets {
    final value = _streets;
    if (value == null) return null;
    if (_streets is EqualUnmodifiableListView) return _streets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, geolocation: $geolocation, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, areas: $areas, streets: $streets, lastEdit: $lastEdit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Family &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._streets, _streets) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      geolocation,
      notes,
      color,
      photoUpdatedAt,
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_streets),
      lastEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final DateTime? photoUpdatedAt,
      final List<Area>? areas,
      final List<Street>? streets,
      final LastRecordedByInfo? lastEdit}) = _$_Family;
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
  List<Area>? get areas;
  @override
  List<Street>? get streets;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      throw _privateConstructorUsedError;
}
