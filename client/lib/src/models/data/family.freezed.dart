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
  String? get blurhash => throw _privateConstructorUsedError;
  List<Area>? get areas => throw _privateConstructorUsedError;
  List<Street>? get streets => throw _privateConstructorUsedError;
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  List<Family>? get children => throw _privateConstructorUsedError;
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  List<Family>? get parents => throw _privateConstructorUsedError;
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
      String? blurhash,
      List<Area>? areas,
      List<Street>? streets,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      List<Family>? parents,
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
    Object? blurhash = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? children = freezed,
    Object? parents = freezed,
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
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      areas: freezed == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: freezed == streets
          ? _value.streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      parents: freezed == parents
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
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
abstract class _$$FamilyImplCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$FamilyImplCopyWith(
          _$FamilyImpl value, $Res Function(_$FamilyImpl) then) =
      __$$FamilyImplCopyWithImpl<$Res>;
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
      String? blurhash,
      List<Area>? areas,
      List<Street>? streets,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      List<Family>? parents,
      LastRecordedByInfo? lastEdit});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$$FamilyImplCopyWithImpl<$Res>
    extends _$FamilyCopyWithImpl<$Res, _$FamilyImpl>
    implements _$$FamilyImplCopyWith<$Res> {
  __$$FamilyImplCopyWithImpl(
      _$FamilyImpl _value, $Res Function(_$FamilyImpl) _then)
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
    Object? blurhash = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? children = freezed,
    Object? parents = freezed,
    Object? lastEdit = freezed,
  }) {
    return _then(_$FamilyImpl(
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
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      areas: freezed == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
      streets: freezed == streets
          ? _value._streets
          : streets // ignore: cast_nullable_to_non_nullable
              as List<Street>?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      parents: freezed == parents
          ? _value._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyImpl extends _Family {
  _$FamilyImpl(
      {required this.id,
      required this.name,
      this.address,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) this.geolocation,
      this.notes,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      final List<Area>? areas,
      final List<Street>? streets,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      final List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      final List<Family>? parents,
      this.lastEdit})
      : _areas = areas,
        _streets = streets,
        _children = children,
        _parents = parents,
        super._();

  factory _$FamilyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyImplFromJson(json);

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
  final String? blurhash;
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

  final List<Family>? _children;
  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  List<Family>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Family>? _parents;
  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  List<Family>? get parents {
    final value = _parents;
    if (value == null) return null;
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, geolocation: $geolocation, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, areas: $areas, streets: $streets, children: $children, parents: $parents, lastEdit: $lastEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._streets, _streets) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other._parents, _parents) &&
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
      blurhash,
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_streets),
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_parents),
      lastEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      __$$FamilyImplCopyWithImpl<_$FamilyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyImplToJson(
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
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final DateTime? photoUpdatedAt,
      final String? blurhash,
      final List<Area>? areas,
      final List<Street>? streets,
      @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
      final List<Family>? children,
      @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
      final List<Family>? parents,
      final LastRecordedByInfo? lastEdit}) = _$FamilyImpl;
  _Family._() : super._();

  factory _Family.fromJson(Map<String, dynamic> json) = _$FamilyImpl.fromJson;

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
  String? get blurhash;
  @override
  List<Area>? get areas;
  @override
  List<Street>? get streets;
  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  List<Family>? get children;
  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  List<Family>? get parents;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  @JsonKey(ignore: true)
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
