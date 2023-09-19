// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Family? get family => throw _privateConstructorUsedError;
  @JsonKey(name: 'adminFamily')
  String? get familyId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  List<Area>? get areas => throw _privateConstructorUsedError;
  List<Street>? get streets => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String id,
      String name,
      Family? family,
      @JsonKey(name: 'adminFamily') String? familyId,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      List<Area>? areas,
      List<Street>? streets,
      LastRecordedByInfo? lastEdit,
      DateTime? photoUpdatedAt,
      String? blurhash});

  $FamilyCopyWith<$Res>? get family;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? geolocation = freezed,
    Object? color = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? lastEdit = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
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
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      familyId: freezed == familyId
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
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
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res>? get family {
    if (_value.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_value.family!, (value) {
      return _then(_value.copyWith(family: value) as $Val);
    });
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
abstract class _$$_StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$_StoreCopyWith(_$_Store value, $Res Function(_$_Store) then) =
      __$$_StoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Family? family,
      @JsonKey(name: 'adminFamily') String? familyId,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      List<Area>? areas,
      List<Street>? streets,
      LastRecordedByInfo? lastEdit,
      DateTime? photoUpdatedAt,
      String? blurhash});

  @override
  $FamilyCopyWith<$Res>? get family;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res, _$_Store>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? geolocation = freezed,
    Object? color = freezed,
    Object? areas = freezed,
    Object? streets = freezed,
    Object? lastEdit = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(_$_Store(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      familyId: freezed == familyId
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
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
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store extends _Store {
  _$_Store(
      {required this.id,
      required this.name,
      this.family,
      @JsonKey(name: 'adminFamily') this.familyId,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) this.geolocation,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      final List<Area>? areas,
      final List<Street>? streets,
      this.lastEdit,
      this.photoUpdatedAt,
      this.blurhash})
      : _areas = areas,
        _streets = streets,
        super._();

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Family? family;
  @override
  @JsonKey(name: 'adminFamily')
  final String? familyId;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  final Point? geolocation;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
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
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;

  @override
  String toString() {
    return 'Store(id: $id, name: $name, family: $family, familyId: $familyId, geolocation: $geolocation, color: $color, areas: $areas, streets: $streets, lastEdit: $lastEdit, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._streets, _streets) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      family,
      familyId,
      geolocation,
      color,
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_streets),
      lastEdit,
      photoUpdatedAt,
      blurhash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      __$$_StoreCopyWithImpl<_$_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreToJson(
      this,
    );
  }
}

abstract class _Store extends Store {
  factory _Store(
      {required final String id,
      required final String name,
      final Family? family,
      @JsonKey(name: 'adminFamily') final String? familyId,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
      final Point? geolocation,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final List<Area>? areas,
      final List<Street>? streets,
      final LastRecordedByInfo? lastEdit,
      final DateTime? photoUpdatedAt,
      final String? blurhash}) = _$_Store;
  _Store._() : super._();

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Family? get family;
  @override
  @JsonKey(name: 'adminFamily')
  String? get familyId;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  List<Area>? get areas;
  @override
  List<Street>? get streets;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  DateTime? get photoUpdatedAt;
  @override
  String? get blurhash;
  @override
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}
